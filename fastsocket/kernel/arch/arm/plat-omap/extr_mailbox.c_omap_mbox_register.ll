; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mailbox.c_omap_mbox_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mailbox.c_omap_mbox_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.omap_mbox = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@omap_mbox_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@dev_attr_mbox = common dso_local global i32 0, align 4
@mboxes_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_mbox_register(%struct.device* %0, %struct.omap_mbox* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.omap_mbox*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap_mbox**, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.omap_mbox* %1, %struct.omap_mbox** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %9 = icmp ne %struct.omap_mbox* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %76

13:                                               ; preds = %2
  %14 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %15 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %76

21:                                               ; preds = %13
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %24 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %25 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @device_create(i32* @omap_mbox_class, %struct.device* %22, i32 0, %struct.omap_mbox* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %29 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %31 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %21
  %36 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %37 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %76

40:                                               ; preds = %21
  %41 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %42 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @device_create_file(i32 %43, i32* @dev_attr_mbox)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %70

48:                                               ; preds = %40
  %49 = call i32 @write_lock(i32* @mboxes_lock)
  %50 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %51 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.omap_mbox** @find_mboxes(i32 %52)
  store %struct.omap_mbox** %53, %struct.omap_mbox*** %7, align 8
  %54 = load %struct.omap_mbox**, %struct.omap_mbox*** %7, align 8
  %55 = load %struct.omap_mbox*, %struct.omap_mbox** %54, align 8
  %56 = icmp ne %struct.omap_mbox* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  %60 = call i32 @write_unlock(i32* @mboxes_lock)
  br label %65

61:                                               ; preds = %48
  %62 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %63 = load %struct.omap_mbox**, %struct.omap_mbox*** %7, align 8
  store %struct.omap_mbox* %62, %struct.omap_mbox** %63, align 8
  %64 = call i32 @write_unlock(i32* @mboxes_lock)
  store i32 0, i32* %3, align 4
  br label %76

65:                                               ; preds = %57
  %66 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %67 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @device_remove_file(i32 %68, i32* @dev_attr_mbox)
  br label %70

70:                                               ; preds = %65, %47
  %71 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %72 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @device_unregister(i32 %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %70, %61, %35, %18, %10
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @device_create(i32*, %struct.device*, i32, %struct.omap_mbox*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local %struct.omap_mbox** @find_mboxes(i32) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
