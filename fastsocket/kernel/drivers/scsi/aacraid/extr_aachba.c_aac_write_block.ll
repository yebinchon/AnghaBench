; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_aac_write_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_aac_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.aac_write = type { %struct.TYPE_4__, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8* }

@VM_CtBlockWrite = common dso_local global i32 0, align 4
@ContainerCommand = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@io_callback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib*, %struct.scsi_cmnd*, i32, i32, i32)* @aac_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_write_block(%struct.fib* %0, %struct.scsi_cmnd* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fib*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.aac_write*, align 8
  store %struct.fib* %0, %struct.fib** %6, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.fib*, %struct.fib** %6, align 8
  %14 = call i32 @aac_fib_init(%struct.fib* %13)
  %15 = load %struct.fib*, %struct.fib** %6, align 8
  %16 = call i64 @fib_data(%struct.fib* %15)
  %17 = inttoptr i64 %16 to %struct.aac_write*
  store %struct.aac_write* %17, %struct.aac_write** %12, align 8
  %18 = load i32, i32* @VM_CtBlockWrite, align 4
  %19 = call i8* @cpu_to_le32(i32 %18)
  %20 = load %struct.aac_write*, %struct.aac_write** %12, align 8
  %21 = getelementptr inbounds %struct.aac_write, %struct.aac_write* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %23 = call i32 @scmd_id(%struct.scsi_cmnd* %22)
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = load %struct.aac_write*, %struct.aac_write** %12, align 8
  %26 = getelementptr inbounds %struct.aac_write, %struct.aac_write* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = load %struct.aac_write*, %struct.aac_write** %12, align 8
  %30 = getelementptr inbounds %struct.aac_write, %struct.aac_write* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 %31, 512
  %33 = call i8* @cpu_to_le32(i32 %32)
  %34 = load %struct.aac_write*, %struct.aac_write** %12, align 8
  %35 = getelementptr inbounds %struct.aac_write, %struct.aac_write* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = call i8* @cpu_to_le32(i32 1)
  %37 = load %struct.aac_write*, %struct.aac_write** %12, align 8
  %38 = getelementptr inbounds %struct.aac_write, %struct.aac_write* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %41 = load %struct.aac_write*, %struct.aac_write** %12, align 8
  %42 = getelementptr inbounds %struct.aac_write, %struct.aac_write* %41, i32 0, i32 0
  %43 = call i32 @aac_build_sg(%struct.scsi_cmnd* %40, %struct.TYPE_4__* %42)
  %44 = load %struct.aac_write*, %struct.aac_write** %12, align 8
  %45 = getelementptr inbounds %struct.aac_write, %struct.aac_write* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @le32_to_cpu(i8* %47)
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = add i64 40, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.fib*, %struct.fib** %6, align 8
  %57 = getelementptr inbounds %struct.fib, %struct.fib* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 %61, 4
  %63 = icmp ugt i64 %55, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  %66 = load i32, i32* @ContainerCommand, align 4
  %67 = load %struct.fib*, %struct.fib** %6, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @FsaNormal, align 4
  %70 = load i64, i64* @io_callback, align 8
  %71 = trunc i64 %70 to i32
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %73 = bitcast %struct.scsi_cmnd* %72 to i8*
  %74 = call i32 @aac_fib_send(i32 %66, %struct.fib* %67, i32 %68, i32 %69, i32 0, i32 1, i32 %71, i8* %73)
  ret i32 %74
}

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i32 @aac_build_sg(%struct.scsi_cmnd*, %struct.TYPE_4__*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
