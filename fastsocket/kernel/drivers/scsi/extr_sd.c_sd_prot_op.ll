; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_prot_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_prot_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64 }

@SCSI_PROT_NORMAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@SCSI_PROT_READ_PASS = common dso_local global i32 0, align 4
@SCSI_PROT_READ_STRIP = common dso_local global i32 0, align 4
@SCSI_PROT_READ_INSERT = common dso_local global i32 0, align 4
@SCSI_PROT_WRITE_PASS = common dso_local global i32 0, align 4
@SCSI_PROT_WRITE_INSERT = common dso_local global i32 0, align 4
@SCSI_PROT_WRITE_STRIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, i32)* @sd_prot_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_prot_op(%struct.scsi_cmnd* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @SCSI_PROT_NORMAL, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %9 = call i32 @scsi_prot_sg_count(%struct.scsi_cmnd* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @SCSI_PROT_READ_PASS, align 4
  store i32 %22, i32* %5, align 4
  br label %41

23:                                               ; preds = %18, %15
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @SCSI_PROT_READ_STRIP, align 4
  store i32 %30, i32* %5, align 4
  br label %40

31:                                               ; preds = %26, %23
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @SCSI_PROT_READ_INSERT, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %34, %31
  br label %40

40:                                               ; preds = %39, %29
  br label %41

41:                                               ; preds = %40, %21
  br label %69

42:                                               ; preds = %2
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @SCSI_PROT_WRITE_PASS, align 4
  store i32 %49, i32* %5, align 4
  br label %68

50:                                               ; preds = %45, %42
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @SCSI_PROT_WRITE_INSERT, align 4
  store i32 %57, i32* %5, align 4
  br label %67

58:                                               ; preds = %53, %50
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @SCSI_PROT_WRITE_STRIP, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %61, %58
  br label %67

67:                                               ; preds = %66, %56
  br label %68

68:                                               ; preds = %67, %48
  br label %69

69:                                               ; preds = %68, %41
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @scsi_set_prot_op(%struct.scsi_cmnd* %70, i32 %71)
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @scsi_set_prot_type(%struct.scsi_cmnd* %73, i32 %74)
  ret void
}

declare dso_local i32 @scsi_prot_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_set_prot_op(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_set_prot_type(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
