; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_aac_write_raw_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_aac_write_raw_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { %struct.aac_dev* }
%struct.aac_dev = type { i64, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.aac_raw_io2 = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.aac_raw_io = type { %struct.TYPE_4__, i64, i64, i8*, i8*, i8*, i8** }
%struct.TYPE_4__ = type { i32 }

@AAC_COMM_MESSAGE_TYPE2 = common dso_local global i64 0, align 8
@aac_cache = common dso_local global i32 0, align 4
@RIO2_IO_TYPE_WRITE = common dso_local global i32 0, align 4
@RIO2_IO_SUREWRITE = common dso_local global i32 0, align 4
@ContainerRawIo2 = common dso_local global i32 0, align 4
@RIO_TYPE_WRITE = common dso_local global i32 0, align 4
@RIO_SUREWRITE = common dso_local global i32 0, align 4
@ContainerRawIo = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@io_callback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib*, %struct.scsi_cmnd*, i32, i32, i32)* @aac_write_raw_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_write_raw_io(%struct.fib* %0, %struct.scsi_cmnd* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fib*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.aac_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.aac_raw_io2*, align 8
  %15 = alloca %struct.aac_raw_io*, align 8
  store %struct.fib* %0, %struct.fib** %6, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.fib*, %struct.fib** %6, align 8
  %17 = getelementptr inbounds %struct.fib, %struct.fib* %16, i32 0, i32 0
  %18 = load %struct.aac_dev*, %struct.aac_dev** %17, align 8
  store %struct.aac_dev* %18, %struct.aac_dev** %11, align 8
  %19 = load %struct.fib*, %struct.fib** %6, align 8
  %20 = call i32 @aac_fib_init(%struct.fib* %19)
  %21 = load %struct.aac_dev*, %struct.aac_dev** %11, align 8
  %22 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AAC_COMM_MESSAGE_TYPE2, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %106

26:                                               ; preds = %5
  %27 = load %struct.aac_dev*, %struct.aac_dev** %11, align 8
  %28 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %106, label %31

31:                                               ; preds = %26
  %32 = load %struct.fib*, %struct.fib** %6, align 8
  %33 = call i64 @fib_data(%struct.fib* %32)
  %34 = inttoptr i64 %33 to %struct.aac_raw_io2*
  store %struct.aac_raw_io2* %34, %struct.aac_raw_io2** %14, align 8
  %35 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %36 = call i32 @memset(%struct.aac_raw_io2* %35, i32 0, i32 48)
  %37 = load i32, i32* %8, align 4
  %38 = call i8* @cpu_to_le32(i32 %37)
  %39 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %40 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = and i64 %42, -4294967296
  %44 = lshr i64 %43, 32
  %45 = trunc i64 %44 to i32
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %48 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = shl i32 %49, 9
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %53 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %55 = call i32 @scmd_id(%struct.scsi_cmnd* %54)
  %56 = call i8* @cpu_to_le16(i32 %55)
  %57 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %58 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %31
  %62 = load i32, i32* @aac_cache, align 4
  %63 = and i32 %62, 5
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %81

65:                                               ; preds = %61
  %66 = load i32, i32* @aac_cache, align 4
  %67 = and i32 %66, 5
  %68 = icmp ne i32 %67, 5
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = load %struct.fib*, %struct.fib** %6, align 8
  %71 = getelementptr inbounds %struct.fib, %struct.fib* %70, i32 0, i32 0
  %72 = load %struct.aac_dev*, %struct.aac_dev** %71, align 8
  %73 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %69, %65
  %77 = load i32, i32* @RIO2_IO_TYPE_WRITE, align 4
  %78 = load i32, i32* @RIO2_IO_SUREWRITE, align 4
  %79 = or i32 %77, %78
  %80 = call i8* @cpu_to_le16(i32 %79)
  br label %84

81:                                               ; preds = %69, %61, %31
  %82 = load i32, i32* @RIO2_IO_TYPE_WRITE, align 4
  %83 = call i8* @cpu_to_le16(i32 %82)
  br label %84

84:                                               ; preds = %81, %76
  %85 = phi i8* [ %80, %76 ], [ %83, %81 ]
  %86 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %87 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %89 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %90 = load %struct.aac_dev*, %struct.aac_dev** %11, align 8
  %91 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %90, i32 0, i32 3
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @aac_build_sgraw2(%struct.scsi_cmnd* %88, %struct.aac_raw_io2* %89, i32 %94)
  %96 = load i32, i32* @ContainerRawIo2, align 4
  store i32 %96, i32* %13, align 4
  %97 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %98 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @le32_to_cpu(i32 %99)
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 4
  %104 = add i64 48, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %12, align 4
  br label %184

106:                                              ; preds = %26, %5
  %107 = load %struct.fib*, %struct.fib** %6, align 8
  %108 = call i64 @fib_data(%struct.fib* %107)
  %109 = inttoptr i64 %108 to %struct.aac_raw_io*
  store %struct.aac_raw_io* %109, %struct.aac_raw_io** %15, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i8* @cpu_to_le32(i32 %110)
  %112 = load %struct.aac_raw_io*, %struct.aac_raw_io** %15, align 8
  %113 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %112, i32 0, i32 6
  %114 = load i8**, i8*** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 0
  store i8* %111, i8** %115, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = and i64 %117, -4294967296
  %119 = lshr i64 %118, 32
  %120 = trunc i64 %119 to i32
  %121 = call i8* @cpu_to_le32(i32 %120)
  %122 = load %struct.aac_raw_io*, %struct.aac_raw_io** %15, align 8
  %123 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %122, i32 0, i32 6
  %124 = load i8**, i8*** %123, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 1
  store i8* %121, i8** %125, align 8
  %126 = load i32, i32* %9, align 4
  %127 = shl i32 %126, 9
  %128 = call i8* @cpu_to_le32(i32 %127)
  %129 = load %struct.aac_raw_io*, %struct.aac_raw_io** %15, align 8
  %130 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %129, i32 0, i32 5
  store i8* %128, i8** %130, align 8
  %131 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %132 = call i32 @scmd_id(%struct.scsi_cmnd* %131)
  %133 = call i8* @cpu_to_le16(i32 %132)
  %134 = load %struct.aac_raw_io*, %struct.aac_raw_io** %15, align 8
  %135 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %134, i32 0, i32 4
  store i8* %133, i8** %135, align 8
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %106
  %139 = load i32, i32* @aac_cache, align 4
  %140 = and i32 %139, 5
  %141 = icmp ne i32 %140, 1
  br i1 %141, label %142, label %158

142:                                              ; preds = %138
  %143 = load i32, i32* @aac_cache, align 4
  %144 = and i32 %143, 5
  %145 = icmp ne i32 %144, 5
  br i1 %145, label %153, label %146

146:                                              ; preds = %142
  %147 = load %struct.fib*, %struct.fib** %6, align 8
  %148 = getelementptr inbounds %struct.fib, %struct.fib* %147, i32 0, i32 0
  %149 = load %struct.aac_dev*, %struct.aac_dev** %148, align 8
  %150 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %146, %142
  %154 = load i32, i32* @RIO_TYPE_WRITE, align 4
  %155 = load i32, i32* @RIO_SUREWRITE, align 4
  %156 = or i32 %154, %155
  %157 = call i8* @cpu_to_le16(i32 %156)
  br label %161

158:                                              ; preds = %146, %138, %106
  %159 = load i32, i32* @RIO_TYPE_WRITE, align 4
  %160 = call i8* @cpu_to_le16(i32 %159)
  br label %161

161:                                              ; preds = %158, %153
  %162 = phi i8* [ %157, %153 ], [ %160, %158 ]
  %163 = load %struct.aac_raw_io*, %struct.aac_raw_io** %15, align 8
  %164 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %163, i32 0, i32 3
  store i8* %162, i8** %164, align 8
  %165 = load %struct.aac_raw_io*, %struct.aac_raw_io** %15, align 8
  %166 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %165, i32 0, i32 2
  store i64 0, i64* %166, align 8
  %167 = load %struct.aac_raw_io*, %struct.aac_raw_io** %15, align 8
  %168 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %167, i32 0, i32 1
  store i64 0, i64* %168, align 8
  %169 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %170 = load %struct.aac_raw_io*, %struct.aac_raw_io** %15, align 8
  %171 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %170, i32 0, i32 0
  %172 = call i32 @aac_build_sgraw(%struct.scsi_cmnd* %169, %struct.TYPE_4__* %171)
  %173 = load i32, i32* @ContainerRawIo, align 4
  store i32 %173, i32* %13, align 4
  %174 = load %struct.aac_raw_io*, %struct.aac_raw_io** %15, align 8
  %175 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @le32_to_cpu(i32 %177)
  %179 = sub nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = mul i64 %180, 4
  %182 = add i64 56, %181
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %12, align 4
  br label %184

184:                                              ; preds = %161, %84
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = load %struct.fib*, %struct.fib** %6, align 8
  %188 = getelementptr inbounds %struct.fib, %struct.fib* %187, i32 0, i32 0
  %189 = load %struct.aac_dev*, %struct.aac_dev** %188, align 8
  %190 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = sub i64 %192, 4
  %194 = icmp ugt i64 %186, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @BUG_ON(i32 %195)
  %197 = load i32, i32* %13, align 4
  %198 = load %struct.fib*, %struct.fib** %6, align 8
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* @FsaNormal, align 4
  %201 = load i64, i64* @io_callback, align 8
  %202 = trunc i64 %201 to i32
  %203 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %204 = bitcast %struct.scsi_cmnd* %203 to i8*
  %205 = call i32 @aac_fib_send(i32 %197, %struct.fib* %198, i32 %199, i32 %200, i32 0, i32 1, i32 %202, i8* %204)
  ret i32 %205
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
