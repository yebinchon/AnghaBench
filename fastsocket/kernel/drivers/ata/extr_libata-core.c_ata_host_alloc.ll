; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_host_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_host_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, %struct.ata_port**, %struct.device*, i32, i32 }
%struct.ata_port = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ata_host_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ata_host* @ata_host_alloc(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_host*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_host*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ata_port*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call i32 @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32 @devres_open_group(%struct.device* %11, i32* null, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.ata_host* null, %struct.ata_host** %3, align 8
  br label %79

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = add i64 32, %20
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* @ata_host_release, align 4
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.ata_host* @devres_alloc(i32 %22, i64 %23, i32 %24)
  store %struct.ata_host* %25, %struct.ata_host** %6, align 8
  %26 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %27 = icmp ne %struct.ata_host* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  br label %76

29:                                               ; preds = %16
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %32 = call i32 @devres_add(%struct.device* %30, %struct.ata_host* %31)
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %35 = call i32 @dev_set_drvdata(%struct.device* %33, %struct.ata_host* %34)
  %36 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %37 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %36, i32 0, i32 4
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %40 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %39, i32 0, i32 3
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %44 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %43, i32 0, i32 2
  store %struct.device* %42, %struct.device** %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %47 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %69, %29
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %48
  %53 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %54 = call %struct.ata_port* @ata_port_alloc(%struct.ata_host* %53)
  store %struct.ata_port* %54, %struct.ata_port** %9, align 8
  %55 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  %56 = icmp ne %struct.ata_port* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %76

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  %61 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  %63 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %64 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %63, i32 0, i32 1
  %65 = load %struct.ata_port**, %struct.ata_port*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %65, i64 %67
  store %struct.ata_port* %62, %struct.ata_port** %68, align 8
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %48

72:                                               ; preds = %48
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = call i32 @devres_remove_group(%struct.device* %73, i32* null)
  %75 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  store %struct.ata_host* %75, %struct.ata_host** %3, align 8
  br label %79

76:                                               ; preds = %57, %28
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 @devres_release_group(%struct.device* %77, i32* null)
  store %struct.ata_host* null, %struct.ata_host** %3, align 8
  br label %79

79:                                               ; preds = %76, %72, %15
  %80 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  ret %struct.ata_host* %80
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @devres_open_group(%struct.device*, i32*, i32) #1

declare dso_local %struct.ata_host* @devres_alloc(i32, i64, i32) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.ata_host*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ata_host*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.ata_port* @ata_port_alloc(%struct.ata_host*) #1

declare dso_local i32 @devres_remove_group(%struct.device*, i32*) #1

declare dso_local i32 @devres_release_group(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
