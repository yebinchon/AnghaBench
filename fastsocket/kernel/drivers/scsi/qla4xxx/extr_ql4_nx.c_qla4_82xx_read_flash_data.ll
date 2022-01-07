; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_read_flash_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_read_flash_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ROM lock failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Do ROM fast read failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.scsi_qla_host*, i32*, i32, i32)* @qla4_82xx_read_flash_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @qla4_82xx_read_flash_data(%struct.scsi_qla_host* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %22, %4
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %15 = call i64 @qla4_82xx_rom_lock(%struct.scsi_qla_host* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 50000
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i1 [ false, %13 ], [ %19, %17 ]
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = call i32 @udelay(i32 100)
  %24 = call i32 (...) @cond_resched()
  %25 = load i32, i32* %12, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %12, align 4
  br label %13

27:                                               ; preds = %20
  %28 = load i32, i32* %12, align 4
  %29 = icmp sge i32 %28, 50000
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* @KERN_WARNING, align 4
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %33 = call i32 @ql4_printk(i32 %31, %struct.scsi_qla_host* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %34 = load i32*, i32** %7, align 8
  store i32* %34, i32** %5, align 8
  br label %67

35:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %57, %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = sdiv i32 %38, 4
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @qla4_82xx_do_rom_fast_read(%struct.scsi_qla_host* %42, i32 %43, i32* %11)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @KERN_WARNING, align 4
  %48 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %49 = call i32 @ql4_printk(i32 %47, %struct.scsi_qla_host* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %63

50:                                               ; preds = %41
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @__constant_cpu_to_le32(i32 %51)
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 4
  store i32 %61, i32* %8, align 4
  br label %36

62:                                               ; preds = %36
  br label %63

63:                                               ; preds = %62, %46
  %64 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %65 = call i32 @qla4_82xx_rom_unlock(%struct.scsi_qla_host* %64)
  %66 = load i32*, i32** %7, align 8
  store i32* %66, i32** %5, align 8
  br label %67

67:                                               ; preds = %63, %30
  %68 = load i32*, i32** %5, align 8
  ret i32* %68
}

declare dso_local i64 @qla4_82xx_rom_lock(%struct.scsi_qla_host*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i64 @qla4_82xx_do_rom_fast_read(%struct.scsi_qla_host*, i32, i32*) #1

declare dso_local i32 @__constant_cpu_to_le32(i32) #1

declare dso_local i32 @qla4_82xx_rom_unlock(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
