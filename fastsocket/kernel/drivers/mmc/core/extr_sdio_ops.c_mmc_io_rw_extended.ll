; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_ops.c_mmc_io_rw_extended.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_ops.c_mmc_io_rw_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.mmc_request = type { i32, i32, i32, i32, i32, i32, i32*, %struct.scatterlist*, i32, %struct.mmc_request*, %struct.mmc_request* }
%struct.scatterlist = type { i32 }
%struct.mmc_command = type { i32, i32, i32, i32, i32, i32, i32*, %struct.scatterlist*, i32, %struct.mmc_command*, %struct.mmc_command* }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32*, %struct.scatterlist*, i32, %struct.mmc_data*, %struct.mmc_data* }

@EINVAL = common dso_local global i32 0, align 4
@SD_IO_RW_EXTENDED = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R5 = common dso_local global i32 0, align 4
@MMC_RSP_R5 = common dso_local global i32 0, align 4
@MMC_CMD_ADTC = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@R5_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@R5_FUNCTION_NUMBER = common dso_local global i32 0, align 4
@R5_OUT_OF_RANGE = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_io_rw_extended(%struct.mmc_card* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mmc_card*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mmc_request, align 8
  %19 = alloca %struct.mmc_command, align 8
  %20 = alloca %struct.mmc_data, align 8
  %21 = alloca %struct.scatterlist, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load %struct.mmc_card*, %struct.mmc_card** %10, align 8
  %23 = icmp ne %struct.mmc_card* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32, i32* %12, align 4
  %28 = icmp ugt i32 %27, 7
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load i32, i32* %16, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %8
  %34 = load i32, i32* %17, align 4
  %35 = icmp ugt i32 %34, 512
  br label %36

36:                                               ; preds = %33, %8
  %37 = phi i1 [ false, %8 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load i32, i32* %16, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  %44 = load i32, i32* %17, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load i32, i32* %13, align 4
  %49 = and i32 %48, -131072
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %36
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  br label %199

54:                                               ; preds = %36
  %55 = call i32 @memset(%struct.mmc_request* %18, i32 0, i32 64)
  %56 = bitcast %struct.mmc_command* %19 to %struct.mmc_request*
  %57 = call i32 @memset(%struct.mmc_request* %56, i32 0, i32 64)
  %58 = bitcast %struct.mmc_data* %20 to %struct.mmc_request*
  %59 = call i32 @memset(%struct.mmc_request* %58, i32 0, i32 64)
  %60 = bitcast %struct.mmc_command* %19 to %struct.mmc_request*
  %61 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %18, i32 0, i32 10
  store %struct.mmc_request* %60, %struct.mmc_request** %61, align 8
  %62 = bitcast %struct.mmc_data* %20 to %struct.mmc_request*
  %63 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %18, i32 0, i32 9
  store %struct.mmc_request* %62, %struct.mmc_request** %63, align 8
  %64 = load i32, i32* @SD_IO_RW_EXTENDED, align 4
  %65 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 8
  store i32 %64, i32* %65, align 8
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 -2147483648, i32 0
  %70 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = load i32, i32* %12, align 4
  %72 = shl i32 %71, 28
  %73 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 67108864, i32 0
  %80 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %79
  store i32 %82, i32* %80, align 8
  %83 = load i32, i32* %13, align 4
  %84 = shl i32 %83, 9
  %85 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* %16, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %104

90:                                               ; preds = %54
  %91 = load i32, i32* %17, align 4
  %92 = icmp ule i32 %91, 512
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load i32, i32* %17, align 4
  %95 = icmp eq i32 %94, 512
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %99

97:                                               ; preds = %93
  %98 = load i32, i32* %17, align 4
  br label %99

99:                                               ; preds = %97, %96
  %100 = phi i32 [ 0, %96 ], [ %98, %97 ]
  %101 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %100
  store i32 %103, i32* %101, align 8
  br label %110

104:                                              ; preds = %90, %54
  %105 = load i32, i32* %16, align 4
  %106 = or i32 134217728, %105
  %107 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %106
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %99
  %111 = load i32, i32* @MMC_RSP_SPI_R5, align 4
  %112 = load i32, i32* @MMC_RSP_R5, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @MMC_CMD_ADTC, align 4
  %115 = or i32 %113, %114
  %116 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 1
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* %17, align 4
  %118 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %20, i32 0, i32 2
  store i32 %117, i32* %118, align 8
  %119 = load i32, i32* %16, align 4
  %120 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %20, i32 0, i32 3
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %110
  %124 = load i32, i32* @MMC_DATA_WRITE, align 4
  br label %127

125:                                              ; preds = %110
  %126 = load i32, i32* @MMC_DATA_READ, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %20, i32 0, i32 1
  store i32 %128, i32* %129, align 4
  %130 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %20, i32 0, i32 7
  store %struct.scatterlist* %21, %struct.scatterlist** %130, align 8
  %131 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %20, i32 0, i32 4
  store i32 1, i32* %131, align 8
  %132 = load i32*, i32** %15, align 8
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %16, align 4
  %135 = mul i32 %133, %134
  %136 = call i32 @sg_init_one(%struct.scatterlist* %21, i32* %132, i32 %135)
  %137 = bitcast %struct.mmc_data* %20 to %struct.mmc_request*
  %138 = load %struct.mmc_card*, %struct.mmc_card** %10, align 8
  %139 = call i32 @mmc_set_data_timeout(%struct.mmc_request* %137, %struct.mmc_card* %138)
  %140 = load %struct.mmc_card*, %struct.mmc_card** %10, align 8
  %141 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @mmc_wait_for_req(i32 %142, %struct.mmc_request* %18)
  %144 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %127
  %148 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %9, align 4
  br label %199

150:                                              ; preds = %127
  %151 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %20, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %20, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %9, align 4
  br label %199

157:                                              ; preds = %150
  %158 = load %struct.mmc_card*, %struct.mmc_card** %10, align 8
  %159 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @mmc_host_is_spi(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %198

164:                                              ; preds = %157
  %165 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 6
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @R5_ERROR, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %164
  %173 = load i32, i32* @EIO, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %9, align 4
  br label %199

175:                                              ; preds = %164
  %176 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 6
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @R5_FUNCTION_NUMBER, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %175
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %9, align 4
  br label %199

186:                                              ; preds = %175
  %187 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 6
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @R5_OUT_OF_RANGE, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %186
  %195 = load i32, i32* @ERANGE, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %9, align 4
  br label %199

197:                                              ; preds = %186
  br label %198

198:                                              ; preds = %197, %163
  store i32 0, i32* %9, align 4
  br label %199

199:                                              ; preds = %198, %194, %183, %172, %154, %147, %51
  %200 = load i32, i32* %9, align 4
  ret i32 %200
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memset(%struct.mmc_request*, i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @mmc_set_data_timeout(%struct.mmc_request*, %struct.mmc_card*) #1

declare dso_local i32 @mmc_wait_for_req(i32, %struct.mmc_request*) #1

declare dso_local i64 @mmc_host_is_spi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
