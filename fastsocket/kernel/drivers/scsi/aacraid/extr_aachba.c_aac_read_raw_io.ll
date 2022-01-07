; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_aac_read_raw_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_aac_read_raw_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { %struct.aac_dev* }
%struct.aac_dev = type { i64, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.aac_raw_io2 = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.aac_raw_io = type { %struct.TYPE_4__, i64, i64, i8*, i8*, i8*, i8** }
%struct.TYPE_4__ = type { i32 }

@AAC_COMM_MESSAGE_TYPE2 = common dso_local global i64 0, align 8
@RIO2_IO_TYPE_READ = common dso_local global i32 0, align 4
@ContainerRawIo2 = common dso_local global i32 0, align 4
@RIO_TYPE_READ = common dso_local global i32 0, align 4
@ContainerRawIo = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@io_callback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib*, %struct.scsi_cmnd*, i32, i32)* @aac_read_raw_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_read_raw_io(%struct.fib* %0, %struct.scsi_cmnd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fib*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.aac_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.aac_raw_io2*, align 8
  %13 = alloca %struct.aac_raw_io*, align 8
  store %struct.fib* %0, %struct.fib** %5, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.fib*, %struct.fib** %5, align 8
  %15 = getelementptr inbounds %struct.fib, %struct.fib* %14, i32 0, i32 0
  %16 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  store %struct.aac_dev* %16, %struct.aac_dev** %9, align 8
  %17 = load %struct.fib*, %struct.fib** %5, align 8
  %18 = call i32 @aac_fib_init(%struct.fib* %17)
  %19 = load %struct.aac_dev*, %struct.aac_dev** %9, align 8
  %20 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AAC_COMM_MESSAGE_TYPE2, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %79

24:                                               ; preds = %4
  %25 = load %struct.aac_dev*, %struct.aac_dev** %9, align 8
  %26 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %79, label %29

29:                                               ; preds = %24
  %30 = load %struct.fib*, %struct.fib** %5, align 8
  %31 = call i64 @fib_data(%struct.fib* %30)
  %32 = inttoptr i64 %31 to %struct.aac_raw_io2*
  store %struct.aac_raw_io2* %32, %struct.aac_raw_io2** %12, align 8
  %33 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %12, align 8
  %34 = call i32 @memset(%struct.aac_raw_io2* %33, i32 0, i32 48)
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %12, align 8
  %38 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = and i64 %40, -4294967296
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %12, align 8
  %46 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 %47, 9
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %12, align 8
  %51 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %53 = call i32 @scmd_id(%struct.scsi_cmnd* %52)
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %12, align 8
  %56 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @RIO2_IO_TYPE_READ, align 4
  %58 = call i8* @cpu_to_le16(i32 %57)
  %59 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %12, align 8
  %60 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %62 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %12, align 8
  %63 = load %struct.aac_dev*, %struct.aac_dev** %9, align 8
  %64 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %63, i32 0, i32 2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @aac_build_sgraw2(%struct.scsi_cmnd* %61, %struct.aac_raw_io2* %62, i32 %67)
  %69 = load i32, i32* @ContainerRawIo2, align 4
  store i32 %69, i32* %11, align 4
  %70 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %12, align 8
  %71 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @le32_to_cpu(i32 %72)
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = add i64 48, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %10, align 4
  br label %132

79:                                               ; preds = %24, %4
  %80 = load %struct.fib*, %struct.fib** %5, align 8
  %81 = call i64 @fib_data(%struct.fib* %80)
  %82 = inttoptr i64 %81 to %struct.aac_raw_io*
  store %struct.aac_raw_io* %82, %struct.aac_raw_io** %13, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i8* @cpu_to_le32(i32 %83)
  %85 = load %struct.aac_raw_io*, %struct.aac_raw_io** %13, align 8
  %86 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %85, i32 0, i32 6
  %87 = load i8**, i8*** %86, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  store i8* %84, i8** %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = and i64 %90, -4294967296
  %92 = lshr i64 %91, 32
  %93 = trunc i64 %92 to i32
  %94 = call i8* @cpu_to_le32(i32 %93)
  %95 = load %struct.aac_raw_io*, %struct.aac_raw_io** %13, align 8
  %96 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %95, i32 0, i32 6
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 1
  store i8* %94, i8** %98, align 8
  %99 = load i32, i32* %8, align 4
  %100 = shl i32 %99, 9
  %101 = call i8* @cpu_to_le32(i32 %100)
  %102 = load %struct.aac_raw_io*, %struct.aac_raw_io** %13, align 8
  %103 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %102, i32 0, i32 5
  store i8* %101, i8** %103, align 8
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %105 = call i32 @scmd_id(%struct.scsi_cmnd* %104)
  %106 = call i8* @cpu_to_le16(i32 %105)
  %107 = load %struct.aac_raw_io*, %struct.aac_raw_io** %13, align 8
  %108 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* @RIO_TYPE_READ, align 4
  %110 = call i8* @cpu_to_le16(i32 %109)
  %111 = load %struct.aac_raw_io*, %struct.aac_raw_io** %13, align 8
  %112 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  %113 = load %struct.aac_raw_io*, %struct.aac_raw_io** %13, align 8
  %114 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  %115 = load %struct.aac_raw_io*, %struct.aac_raw_io** %13, align 8
  %116 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  %117 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %118 = load %struct.aac_raw_io*, %struct.aac_raw_io** %13, align 8
  %119 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %118, i32 0, i32 0
  %120 = call i32 @aac_build_sgraw(%struct.scsi_cmnd* %117, %struct.TYPE_4__* %119)
  %121 = load i32, i32* @ContainerRawIo, align 4
  store i32 %121, i32* %11, align 4
  %122 = load %struct.aac_raw_io*, %struct.aac_raw_io** %13, align 8
  %123 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @le32_to_cpu(i32 %125)
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = mul i64 %128, 4
  %130 = add i64 56, %129
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %79, %29
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = load %struct.fib*, %struct.fib** %5, align 8
  %136 = getelementptr inbounds %struct.fib, %struct.fib* %135, i32 0, i32 0
  %137 = load %struct.aac_dev*, %struct.aac_dev** %136, align 8
  %138 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = sub i64 %140, 4
  %142 = icmp ugt i64 %134, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @BUG_ON(i32 %143)
  %145 = load i32, i32* %11, align 4
  %146 = load %struct.fib*, %struct.fib** %5, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @FsaNormal, align 4
  %149 = load i64, i64* @io_callback, align 8
  %150 = trunc i64 %149 to i32
  %151 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %152 = bitcast %struct.scsi_cmnd* %151 to i8*
  %153 = call i32 @aac_fib_send(i32 %145, %struct.fib* %146, i32 %147, i32 %148, i32 0, i32 1, i32 %150, i8* %152)
  ret i32 %153
}

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i32 @memset(%struct.aac_raw_io2*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i32 @aac_build_sgraw2(%struct.scsi_cmnd*, %struct.aac_raw_io2*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @aac_build_sgraw(%struct.scsi_cmnd*, %struct.TYPE_4__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
