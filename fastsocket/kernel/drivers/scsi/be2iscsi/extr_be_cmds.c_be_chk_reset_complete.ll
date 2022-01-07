; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_cmds.c_be_chk_reset_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_cmds.c_be_chk_reset_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i64 }

@MPU_EP_SEMAPHORE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"BC_%d : Failed in be_chk_reset_completestatus = 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_chk_reset_complete(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  store i32* null, i32** %5, align 8
  store i32 1000, i32* %4, align 4
  %7 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %8 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i32*
  %11 = load i32, i32* @MPU_EP_SEMAPHORE, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  store i32* %13, i32** %5, align 8
  %14 = call i32 @msleep(i32 5000)
  br label %15

15:                                               ; preds = %30, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i32*, i32** %5, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = call i32 @readl(i8* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, -2147483648
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 49152
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %18
  br label %34

30:                                               ; preds = %25
  %31 = call i32 @msleep(i32 60)
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %4, align 4
  br label %15

34:                                               ; preds = %29, %15
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, -2147483648
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %38, %34
  %42 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %43 = load i32, i32* @KERN_ERR, align 4
  %44 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @beiscsi_log(%struct.beiscsi_hba* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %41
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @readl(i8*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
