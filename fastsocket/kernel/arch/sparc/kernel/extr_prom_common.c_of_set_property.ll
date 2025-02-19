; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_prom_common.c_of_set_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_prom_common.c_of_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32, %struct.property* }
%struct.property = type { i32, %struct.property*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@of_set_property_mutex = common dso_local global i32 0, align 4
@devtree_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_set_property(%struct.device_node* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.property**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.property*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kmalloc(i32 %16, i32 %17)
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %88

24:                                               ; preds = %4
  %25 = load i8*, i8** %11, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @memcpy(i8* %25, i8* %26, i32 %27)
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %12, align 4
  %31 = call i32 @mutex_lock(i32* @of_set_property_mutex)
  %32 = call i32 @write_lock(i32* @devtree_lock)
  %33 = load %struct.device_node*, %struct.device_node** %6, align 8
  %34 = getelementptr inbounds %struct.device_node, %struct.device_node* %33, i32 0, i32 1
  store %struct.property** %34, %struct.property*** %10, align 8
  br label %35

35:                                               ; preds = %80, %24
  %36 = load %struct.property**, %struct.property*** %10, align 8
  %37 = load %struct.property*, %struct.property** %36, align 8
  %38 = icmp ne %struct.property* %37, null
  br i1 %38, label %39, label %84

39:                                               ; preds = %35
  %40 = load %struct.property**, %struct.property*** %10, align 8
  %41 = load %struct.property*, %struct.property** %40, align 8
  store %struct.property* %41, %struct.property** %13, align 8
  %42 = load %struct.property*, %struct.property** %13, align 8
  %43 = getelementptr inbounds %struct.property, %struct.property* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strcasecmp(i32 %44, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %80, label %48

48:                                               ; preds = %39
  %49 = load %struct.property*, %struct.property** %13, align 8
  %50 = getelementptr inbounds %struct.property, %struct.property* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %14, align 8
  %52 = load %struct.device_node*, %struct.device_node** %6, align 8
  %53 = getelementptr inbounds %struct.device_node, %struct.device_node* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @prom_setprop(i32 %54, i8* %55, i8* %56, i32 %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %48
  %64 = load i8*, i8** %11, align 8
  %65 = load %struct.property*, %struct.property** %13, align 8
  %66 = getelementptr inbounds %struct.property, %struct.property* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.property*, %struct.property** %13, align 8
  %69 = getelementptr inbounds %struct.property, %struct.property* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.property*, %struct.property** %13, align 8
  %71 = call i64 @OF_IS_DYNAMIC(%struct.property* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load i8*, i8** %14, align 8
  %75 = call i32 @kfree(i8* %74)
  br label %76

76:                                               ; preds = %73, %63
  %77 = load %struct.property*, %struct.property** %13, align 8
  %78 = call i32 @OF_MARK_DYNAMIC(%struct.property* %77)
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %76, %48
  br label %84

80:                                               ; preds = %39
  %81 = load %struct.property**, %struct.property*** %10, align 8
  %82 = load %struct.property*, %struct.property** %81, align 8
  %83 = getelementptr inbounds %struct.property, %struct.property* %82, i32 0, i32 1
  store %struct.property** %83, %struct.property*** %10, align 8
  br label %35

84:                                               ; preds = %79, %35
  %85 = call i32 @write_unlock(i32* @devtree_lock)
  %86 = call i32 @mutex_unlock(i32* @of_set_property_mutex)
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %84, %21
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @prom_setprop(i32, i8*, i8*, i32) #1

declare dso_local i64 @OF_IS_DYNAMIC(%struct.property*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @OF_MARK_DYNAMIC(%struct.property*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
