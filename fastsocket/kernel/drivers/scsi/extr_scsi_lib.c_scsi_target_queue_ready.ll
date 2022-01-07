; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_target_queue_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_target_queue_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_device = type { i32 }
%struct.scsi_target = type { i64, i64, %struct.scsi_device*, i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unblocking target at zero depth\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.scsi_device*)* @scsi_target_queue_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_target_queue_ready(%struct.Scsi_Host* %0, %struct.scsi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.scsi_target*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %5, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %8 = call %struct.scsi_target* @scsi_target(%struct.scsi_device* %7)
  store %struct.scsi_target* %8, %struct.scsi_target** %6, align 8
  %9 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %10 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %15 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %14, i32 0, i32 2
  %16 = load %struct.scsi_device*, %struct.scsi_device** %15, align 8
  %17 = icmp ne %struct.scsi_device* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %20 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %19, i32 0, i32 2
  %21 = load %struct.scsi_device*, %struct.scsi_device** %20, align 8
  %22 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %23 = icmp ne %struct.scsi_device* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %78

25:                                               ; preds = %18, %13
  %26 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %27 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %28 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %27, i32 0, i32 2
  store %struct.scsi_device* %26, %struct.scsi_device** %28, align 8
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %31 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %36 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %41 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* @KERN_INFO, align 4
  %47 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %48 = call i32 @starget_printk(i32 %46, %struct.scsi_target* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 @SCSI_LOG_MLQUEUE(i32 3, i32 %48)
  br label %51

50:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %78

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %34, %29
  %53 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %54 = call i64 @scsi_target_is_busy(%struct.scsi_target* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %58 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %57, i32 0, i32 0
  %59 = call i64 @list_empty(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %63 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %62, i32 0, i32 0
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %65 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %64, i32 0, i32 0
  %66 = call i32 @list_add_tail(i32* %63, i32* %65)
  br label %67

67:                                               ; preds = %61, %56
  store i32 0, i32* %3, align 4
  br label %78

68:                                               ; preds = %52
  %69 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %70 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %69, i32 0, i32 0
  %71 = call i64 @list_empty(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %75 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %74, i32 0, i32 0
  %76 = call i32 @list_del_init(i32* %75)
  br label %77

77:                                               ; preds = %73, %68
  store i32 1, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %67, %50, %24
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.scsi_target* @scsi_target(%struct.scsi_device*) #1

declare dso_local i32 @SCSI_LOG_MLQUEUE(i32, i32) #1

declare dso_local i32 @starget_printk(i32, %struct.scsi_target*, i8*) #1

declare dso_local i64 @scsi_target_is_busy(%struct.scsi_target*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
