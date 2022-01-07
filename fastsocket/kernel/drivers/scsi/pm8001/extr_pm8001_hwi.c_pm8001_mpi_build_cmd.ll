; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_build_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_build_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i64 }
%struct.inbound_queue_table = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"No free mpi buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"INB Q %x OPCODE:%x , UPDATED PI=%d CI=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %0, %struct.inbound_queue_table* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pm8001_hba_info*, align 8
  %8 = alloca %struct.inbound_queue_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %7, align 8
  store %struct.inbound_queue_table* %1, %struct.inbound_queue_table** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 2, i32* %15, align 4
  %17 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %8, align 8
  %18 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %19 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @pm8001_mpi_msg_free_get(%struct.inbound_queue_table* %17, i64 %20, i8** %16)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %25 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %24, i32 %25)
  store i32 -1, i32* %6, align 4
  br label %85

27:                                               ; preds = %5
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load i8*, i8** %16, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %36 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %37, 4
  %39 = call i32 @memcpy(i8* %33, i8* %34, i64 %38)
  %40 = load i32, i32* %13, align 4
  %41 = shl i32 %40, 30
  %42 = or i32 -2147483648, %41
  %43 = load i32, i32* %14, align 4
  %44 = and i32 %43, 31
  %45 = shl i32 %44, 24
  %46 = or i32 %42, %45
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, 63
  %49 = shl i32 %48, 16
  %50 = or i32 %46, %49
  %51 = load i32, i32* %15, align 4
  %52 = and i32 %51, 15
  %53 = shl i32 %52, 12
  %54 = or i32 %50, %53
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 4095
  %57 = or i32 %54, %56
  store i32 %57, i32* %12, align 4
  %58 = load i8*, i8** %16, align 8
  %59 = getelementptr i8, i8* %58, i64 -4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @cpu_to_le32(i32 %60)
  %62 = call i32 @pm8001_write_32(i8* %59, i32 0, i32 %61)
  %63 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %64 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %8, align 8
  %65 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %8, align 8
  %68 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %8, align 8
  %71 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %63, i32 %66, i32 %69, i32 %72)
  %74 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %8, align 8
  %78 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %8, align 8
  %81 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76, i32 %79, i32 %82)
  %84 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %74, i32 %83)
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %27, %23
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i64 @pm8001_mpi_msg_free_get(%struct.inbound_queue_table*, i64, i8**) #1

declare dso_local i32 @PM8001_IO_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @pm8001_write_32(i8*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @pm8001_cw32(%struct.pm8001_hba_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
