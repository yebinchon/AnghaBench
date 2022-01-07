; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.request = type { i32, %struct.i2o_block_request*, %struct.TYPE_7__* }
%struct.i2o_block_request = type { i32 }
%struct.TYPE_7__ = type { %struct.i2o_block_device* }
%struct.i2o_block_device = type { i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.i2o_controller*, %struct.TYPE_8__ }
%struct.i2o_controller = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.i2o_message = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i8* }

@SGL_OFFSET_8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"transfer to removed drive\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i2o_block_driver = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@READ = common dso_local global i64 0, align 8
@I2O_CMD_BLOCK_READ = common dso_local global i32 0, align 4
@I2O_CMD_BLOCK_WRITE = common dso_local global i32 0, align 4
@HOST_TID = common dso_local global i32 0, align 4
@KERNEL_SECTOR_SHIFT = common dso_local global i32 0, align 4
@I2O_CMD_PRIVATE = common dso_local global i32 0, align 4
@I2O_CMD_SCSI_EXEC = common dso_local global i32 0, align 4
@I2O_VENDOR_DPT = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i32 0, align 4
@SGL_OFFSET_12 = common dso_local global i32 0, align 4
@WRITE_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*)* @i2o_block_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_block_transfer(%struct.request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.i2o_block_device*, align 8
  %5 = alloca %struct.i2o_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2o_message*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.i2o_block_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %3, align 8
  %15 = load %struct.request*, %struct.request** %3, align 8
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.i2o_block_device*, %struct.i2o_block_device** %18, align 8
  store %struct.i2o_block_device* %19, %struct.i2o_block_device** %4, align 8
  %20 = load %struct.i2o_block_device*, %struct.i2o_block_device** %4, align 8
  %21 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %20, i32 0, i32 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  %26 = load %struct.request*, %struct.request** %3, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 1
  %28 = load %struct.i2o_block_request*, %struct.i2o_block_request** %27, align 8
  store %struct.i2o_block_request* %28, %struct.i2o_block_request** %9, align 8
  %29 = load i32, i32* @SGL_OFFSET_8, align 4
  store i32 %29, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %30 = load %struct.i2o_block_device*, %struct.i2o_block_device** %4, align 8
  %31 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %30, i32 0, i32 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = icmp ne %struct.TYPE_9__* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = call i32 @osm_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %13, align 4
  br label %217

42:                                               ; preds = %1
  %43 = load %struct.i2o_block_device*, %struct.i2o_block_device** %4, align 8
  %44 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %43, i32 0, i32 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.i2o_controller*, %struct.i2o_controller** %46, align 8
  store %struct.i2o_controller* %47, %struct.i2o_controller** %5, align 8
  %48 = load %struct.i2o_controller*, %struct.i2o_controller** %5, align 8
  %49 = call %struct.i2o_message* @i2o_msg_get(%struct.i2o_controller* %48)
  store %struct.i2o_message* %49, %struct.i2o_message** %7, align 8
  %50 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %51 = call i64 @IS_ERR(%struct.i2o_message* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %55 = call i32 @PTR_ERR(%struct.i2o_message* %54)
  store i32 %55, i32* %13, align 4
  br label %217

56:                                               ; preds = %42
  %57 = load %struct.i2o_controller*, %struct.i2o_controller** %5, align 8
  %58 = load %struct.request*, %struct.request** %3, align 8
  %59 = call i32 @i2o_cntxt_list_add(%struct.i2o_controller* %57, %struct.request* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %13, align 4
  br label %213

65:                                               ; preds = %56
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i2o_block_driver, i32 0, i32 0), align 4
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %69 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i8* %67, i8** %71, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i8* @cpu_to_le32(i32 %72)
  %74 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %75 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store i8* %73, i8** %77, align 8
  %78 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %79 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32* %81, i32** %8, align 8
  %82 = load %struct.request*, %struct.request** %3, align 8
  %83 = call i64 @rq_data_dir(%struct.request* %82)
  %84 = load i64, i64* @READ, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %65
  %87 = load i32, i32* @I2O_CMD_BLOCK_READ, align 4
  %88 = shl i32 %87, 24
  store i32 %88, i32* %14, align 4
  %89 = load %struct.i2o_block_device*, %struct.i2o_block_device** %4, align 8
  %90 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %100 [
    i32 133, label %92
    i32 131, label %93
  ]

92:                                               ; preds = %86
  store i32 538902536, i32* %12, align 4
  br label %101

93:                                               ; preds = %86
  %94 = load %struct.request*, %struct.request** %3, align 8
  %95 = call i32 @blk_rq_sectors(%struct.request* %94)
  %96 = icmp sgt i32 %95, 16
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 538902536, i32* %12, align 4
  br label %99

98:                                               ; preds = %93
  store i32 2031616, i32* %12, align 4
  br label %99

99:                                               ; preds = %98, %97
  br label %101

100:                                              ; preds = %86
  br label %101

101:                                              ; preds = %100, %99, %92
  br label %126

102:                                              ; preds = %65
  %103 = load i32, i32* @I2O_CMD_BLOCK_WRITE, align 4
  %104 = shl i32 %103, 24
  store i32 %104, i32* %14, align 4
  %105 = load %struct.i2o_block_device*, %struct.i2o_block_device** %4, align 8
  %106 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %124 [
    i32 128, label %108
    i32 129, label %109
    i32 132, label %110
    i32 130, label %117
  ]

108:                                              ; preds = %102
  store i32 2031624, i32* %12, align 4
  br label %125

109:                                              ; preds = %102
  store i32 2031632, i32* %12, align 4
  br label %125

110:                                              ; preds = %102
  %111 = load %struct.request*, %struct.request** %3, align 8
  %112 = call i32 @blk_rq_sectors(%struct.request* %111)
  %113 = icmp sgt i32 %112, 16
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i32 2031620, i32* %12, align 4
  br label %116

115:                                              ; preds = %110
  store i32 2031632, i32* %12, align 4
  br label %116

116:                                              ; preds = %115, %114
  br label %125

117:                                              ; preds = %102
  %118 = load %struct.request*, %struct.request** %3, align 8
  %119 = call i32 @blk_rq_sectors(%struct.request* %118)
  %120 = icmp sgt i32 %119, 16
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 2031620, i32* %12, align 4
  br label %123

122:                                              ; preds = %117
  store i32 2031632, i32* %12, align 4
  br label %123

123:                                              ; preds = %122, %121
  br label %124

124:                                              ; preds = %102, %123
  br label %125

125:                                              ; preds = %124, %116, %109, %108
  br label %126

126:                                              ; preds = %125, %101
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* @HOST_TID, align 4
  %129 = shl i32 %128, 12
  %130 = or i32 %127, %129
  %131 = load i32, i32* %6, align 4
  %132 = or i32 %130, %131
  %133 = call i8* @cpu_to_le32(i32 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %136 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 %134, i32* %139, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call i8* @cpu_to_le32(i32 %140)
  %142 = ptrtoint i8* %141 to i32
  %143 = load i32*, i32** %8, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %8, align 8
  store i32 %142, i32* %143, align 4
  %145 = load %struct.request*, %struct.request** %3, align 8
  %146 = call i32 @blk_rq_bytes(%struct.request* %145)
  %147 = call i8* @cpu_to_le32(i32 %146)
  %148 = ptrtoint i8* %147 to i32
  %149 = load i32*, i32** %8, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %8, align 8
  store i32 %148, i32* %149, align 4
  %151 = load %struct.request*, %struct.request** %3, align 8
  %152 = call i32 @blk_rq_pos(%struct.request* %151)
  %153 = load i32, i32* @KERNEL_SECTOR_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = call i8* @cpu_to_le32(i32 %154)
  %156 = ptrtoint i8* %155 to i32
  %157 = load i32*, i32** %8, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %8, align 8
  store i32 %156, i32* %157, align 4
  %159 = load %struct.request*, %struct.request** %3, align 8
  %160 = call i32 @blk_rq_pos(%struct.request* %159)
  %161 = load i32, i32* @KERNEL_SECTOR_SHIFT, align 4
  %162 = sub nsw i32 32, %161
  %163 = ashr i32 %160, %162
  %164 = call i8* @cpu_to_le32(i32 %163)
  %165 = ptrtoint i8* %164 to i32
  %166 = load i32*, i32** %8, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %8, align 8
  store i32 %165, i32* %166, align 4
  %168 = load %struct.i2o_controller*, %struct.i2o_controller** %5, align 8
  %169 = load %struct.i2o_block_request*, %struct.i2o_block_request** %9, align 8
  %170 = call i32 @i2o_block_sglist_alloc(%struct.i2o_controller* %168, %struct.i2o_block_request* %169, i32** %8)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %126
  %173 = load i32, i32* @ENOMEM, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %13, align 4
  br label %209

175:                                              ; preds = %126
  %176 = load i32*, i32** %8, align 8
  %177 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %178 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = ptrtoint i32* %176 to i64
  %183 = ptrtoint i32* %181 to i64
  %184 = sub i64 %182, %183
  %185 = sdiv exact i64 %184, 4
  %186 = trunc i64 %185 to i32
  %187 = call i32 @I2O_MESSAGE_SIZE(i32 %186)
  %188 = load i32, i32* %11, align 4
  %189 = or i32 %187, %188
  %190 = call i8* @cpu_to_le32(i32 %189)
  %191 = ptrtoint i8* %190 to i32
  %192 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %193 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  store i32 %191, i32* %196, align 4
  %197 = load %struct.i2o_block_request*, %struct.i2o_block_request** %9, align 8
  %198 = getelementptr inbounds %struct.i2o_block_request, %struct.i2o_block_request* %197, i32 0, i32 0
  %199 = load %struct.i2o_block_device*, %struct.i2o_block_device** %4, align 8
  %200 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %199, i32 0, i32 3
  %201 = call i32 @list_add_tail(i32* %198, i32* %200)
  %202 = load %struct.i2o_block_device*, %struct.i2o_block_device** %4, align 8
  %203 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 8
  %206 = load %struct.i2o_controller*, %struct.i2o_controller** %5, align 8
  %207 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %208 = call i32 @i2o_msg_post(%struct.i2o_controller* %206, %struct.i2o_message* %207)
  store i32 0, i32* %2, align 4
  br label %219

209:                                              ; preds = %172
  %210 = load %struct.i2o_controller*, %struct.i2o_controller** %5, align 8
  %211 = load %struct.request*, %struct.request** %3, align 8
  %212 = call i32 @i2o_cntxt_list_remove(%struct.i2o_controller* %210, %struct.request* %211)
  br label %213

213:                                              ; preds = %209, %62
  %214 = load %struct.i2o_controller*, %struct.i2o_controller** %5, align 8
  %215 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %216 = call i32 @i2o_msg_nop(%struct.i2o_controller* %214, %struct.i2o_message* %215)
  br label %217

217:                                              ; preds = %213, %53, %38
  %218 = load i32, i32* %13, align 4
  store i32 %218, i32* %2, align 4
  br label %219

219:                                              ; preds = %217, %175
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @osm_err(i8*) #1

declare dso_local %struct.i2o_message* @i2o_msg_get(%struct.i2o_controller*) #1

declare dso_local i64 @IS_ERR(%struct.i2o_message*) #1

declare dso_local i32 @PTR_ERR(%struct.i2o_message*) #1

declare dso_local i32 @i2o_cntxt_list_add(%struct.i2o_controller*, %struct.request*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @i2o_block_sglist_alloc(%struct.i2o_controller*, %struct.i2o_block_request*, i32**) #1

declare dso_local i32 @I2O_MESSAGE_SIZE(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @i2o_msg_post(%struct.i2o_controller*, %struct.i2o_message*) #1

declare dso_local i32 @i2o_cntxt_list_remove(%struct.i2o_controller*, %struct.request*) #1

declare dso_local i32 @i2o_msg_nop(%struct.i2o_controller*, %struct.i2o_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
