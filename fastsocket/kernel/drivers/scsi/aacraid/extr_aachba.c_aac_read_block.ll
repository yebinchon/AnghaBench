; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_aac_read_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_aac_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.aac_read = type { %struct.TYPE_4__, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@VM_CtBlockRead = common dso_local global i32 0, align 4
@ContainerCommand = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@io_callback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib*, %struct.scsi_cmnd*, i32, i32)* @aac_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_read_block(%struct.fib* %0, %struct.scsi_cmnd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fib*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.aac_read*, align 8
  store %struct.fib* %0, %struct.fib** %5, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.fib*, %struct.fib** %5, align 8
  %12 = call i32 @aac_fib_init(%struct.fib* %11)
  %13 = load %struct.fib*, %struct.fib** %5, align 8
  %14 = call i64 @fib_data(%struct.fib* %13)
  %15 = inttoptr i64 %14 to %struct.aac_read*
  store %struct.aac_read* %15, %struct.aac_read** %10, align 8
  %16 = load i32, i32* @VM_CtBlockRead, align 4
  %17 = call i8* @cpu_to_le32(i32 %16)
  %18 = load %struct.aac_read*, %struct.aac_read** %10, align 8
  %19 = getelementptr inbounds %struct.aac_read, %struct.aac_read* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %21 = call i32 @scmd_id(%struct.scsi_cmnd* %20)
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = load %struct.aac_read*, %struct.aac_read** %10, align 8
  %24 = getelementptr inbounds %struct.aac_read, %struct.aac_read* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = load %struct.aac_read*, %struct.aac_read** %10, align 8
  %28 = getelementptr inbounds %struct.aac_read, %struct.aac_read* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 %29, 512
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.aac_read*, %struct.aac_read** %10, align 8
  %33 = getelementptr inbounds %struct.aac_read, %struct.aac_read* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %35 = load %struct.aac_read*, %struct.aac_read** %10, align 8
  %36 = getelementptr inbounds %struct.aac_read, %struct.aac_read* %35, i32 0, i32 0
  %37 = call i32 @aac_build_sg(%struct.scsi_cmnd* %34, %struct.TYPE_4__* %36)
  %38 = load %struct.aac_read*, %struct.aac_read** %10, align 8
  %39 = getelementptr inbounds %struct.aac_read, %struct.aac_read* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @le32_to_cpu(i32 %41)
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = add i64 40, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.fib*, %struct.fib** %5, align 8
  %51 = getelementptr inbounds %struct.fib, %struct.fib* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = sub i64 %55, 4
  %57 = icmp ugt i64 %49, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = load i32, i32* @ContainerCommand, align 4
  %61 = load %struct.fib*, %struct.fib** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @FsaNormal, align 4
  %64 = load i64, i64* @io_callback, align 8
  %65 = trunc i64 %64 to i32
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %67 = bitcast %struct.scsi_cmnd* %66 to i8*
  %68 = call i32 @aac_fib_send(i32 %60, %struct.fib* %61, i32 %62, i32 %63, i32 0, i32 1, i32 %65, i8* %67)
  ret i32 %68
}

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i32 @aac_build_sg(%struct.scsi_cmnd*, %struct.TYPE_4__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
