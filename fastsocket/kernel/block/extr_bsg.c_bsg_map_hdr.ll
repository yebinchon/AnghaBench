; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_map_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_map_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i64, i64, i32, i64, i32*, i32, %struct.request* }
%struct.bsg_device = type { %struct.request_queue* }
%struct.request_queue = type { i32, %struct.bsg_class_device }
%struct.bsg_class_device = type { i32 }
%struct.sg_io_v4 = type { i32, i32, i64, i64 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"map hdr %llx/%u %llx/%u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@QUEUE_FLAG_BIDI = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.bsg_device*, %struct.sg_io_v4*, i32, i32*)* @bsg_map_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @bsg_map_hdr(%struct.bsg_device* %0, %struct.sg_io_v4* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.bsg_device*, align 8
  %7 = alloca %struct.sg_io_v4*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.request_queue*, align 8
  %11 = alloca %struct.request*, align 8
  %12 = alloca %struct.request*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.bsg_class_device*, align 8
  store %struct.bsg_device* %0, %struct.bsg_device** %6, align 8
  store %struct.sg_io_v4* %1, %struct.sg_io_v4** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load %struct.bsg_device*, %struct.bsg_device** %6, align 8
  %19 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %18, i32 0, i32 0
  %20 = load %struct.request_queue*, %struct.request_queue** %19, align 8
  store %struct.request_queue* %20, %struct.request_queue** %10, align 8
  store %struct.request* null, %struct.request** %12, align 8
  store i8* null, i8** %16, align 8
  %21 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %22 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %21, i32 0, i32 1
  store %struct.bsg_class_device* %22, %struct.bsg_class_device** %17, align 8
  %23 = load %struct.bsg_class_device*, %struct.bsg_class_device** %17, align 8
  %24 = getelementptr inbounds %struct.bsg_class_device, %struct.bsg_class_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.request* @ERR_PTR(i32 %29)
  store %struct.request* %30, %struct.request** %5, align 8
  br label %204

31:                                               ; preds = %4
  %32 = load %struct.sg_io_v4*, %struct.sg_io_v4** %7, align 8
  %33 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.sg_io_v4*, %struct.sg_io_v4** %7, align 8
  %36 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sg_io_v4*, %struct.sg_io_v4** %7, align 8
  %39 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sg_io_v4*, %struct.sg_io_v4** %7, align 8
  %42 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %37, i64 %40, i32 %43)
  %45 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %46 = load %struct.sg_io_v4*, %struct.sg_io_v4** %7, align 8
  %47 = call i32 @bsg_validate_sgv4_hdr(%struct.request_queue* %45, %struct.sg_io_v4* %46, i32* %14)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %31
  %51 = load i32, i32* %13, align 4
  %52 = call %struct.request* @ERR_PTR(i32 %51)
  store %struct.request* %52, %struct.request** %5, align 8
  br label %204

53:                                               ; preds = %31
  %54 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.request* @blk_get_request(%struct.request_queue* %54, i32 %55, i32 %56)
  store %struct.request* %57, %struct.request** %11, align 8
  %58 = load %struct.request*, %struct.request** %11, align 8
  %59 = icmp ne %struct.request* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  %63 = call %struct.request* @ERR_PTR(i32 %62)
  store %struct.request* %63, %struct.request** %5, align 8
  br label %204

64:                                               ; preds = %53
  %65 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %66 = load %struct.request*, %struct.request** %11, align 8
  %67 = load %struct.sg_io_v4*, %struct.sg_io_v4** %7, align 8
  %68 = load %struct.bsg_device*, %struct.bsg_device** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @blk_fill_sgv4_hdr_rq(%struct.request_queue* %65, %struct.request* %66, %struct.sg_io_v4* %67, %struct.bsg_device* %68, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %176

74:                                               ; preds = %64
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @WRITE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %127

78:                                               ; preds = %74
  %79 = load %struct.sg_io_v4*, %struct.sg_io_v4** %7, align 8
  %80 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %127

83:                                               ; preds = %78
  %84 = load i32, i32* @QUEUE_FLAG_BIDI, align 4
  %85 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %86 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %85, i32 0, i32 0
  %87 = call i32 @test_bit(i32 %84, i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @EOPNOTSUPP, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %13, align 4
  br label %176

92:                                               ; preds = %83
  %93 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %94 = load i32, i32* @READ, align 4
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call %struct.request* @blk_get_request(%struct.request_queue* %93, i32 %94, i32 %95)
  store %struct.request* %96, %struct.request** %12, align 8
  %97 = load %struct.request*, %struct.request** %12, align 8
  %98 = icmp ne %struct.request* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %13, align 4
  br label %176

102:                                              ; preds = %92
  %103 = load %struct.request*, %struct.request** %12, align 8
  %104 = load %struct.request*, %struct.request** %11, align 8
  %105 = getelementptr inbounds %struct.request, %struct.request* %104, i32 0, i32 6
  store %struct.request* %103, %struct.request** %105, align 8
  %106 = load %struct.request*, %struct.request** %11, align 8
  %107 = getelementptr inbounds %struct.request, %struct.request* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.request*, %struct.request** %12, align 8
  %110 = getelementptr inbounds %struct.request, %struct.request* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 8
  %111 = load %struct.sg_io_v4*, %struct.sg_io_v4** %7, align 8
  %112 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  store i8* %114, i8** %16, align 8
  %115 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %116 = load %struct.request*, %struct.request** %12, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = load %struct.sg_io_v4*, %struct.sg_io_v4** %7, align 8
  %119 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call i32 @blk_rq_map_user(%struct.request_queue* %115, %struct.request* %116, i32* null, i8* %117, i32 %120, i32 %121)
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %102
  br label %176

126:                                              ; preds = %102
  br label %127

127:                                              ; preds = %126, %78, %74
  %128 = load %struct.sg_io_v4*, %struct.sg_io_v4** %7, align 8
  %129 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load %struct.sg_io_v4*, %struct.sg_io_v4** %7, align 8
  %134 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %15, align 4
  %136 = load %struct.sg_io_v4*, %struct.sg_io_v4** %7, align 8
  %137 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i8*
  store i8* %139, i8** %16, align 8
  br label %155

140:                                              ; preds = %127
  %141 = load %struct.sg_io_v4*, %struct.sg_io_v4** %7, align 8
  %142 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = load %struct.sg_io_v4*, %struct.sg_io_v4** %7, align 8
  %147 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %15, align 4
  %149 = load %struct.sg_io_v4*, %struct.sg_io_v4** %7, align 8
  %150 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to i8*
  store i8* %152, i8** %16, align 8
  br label %154

153:                                              ; preds = %140
  store i32 0, i32* %15, align 4
  br label %154

154:                                              ; preds = %153, %145
  br label %155

155:                                              ; preds = %154, %132
  %156 = load i32, i32* %15, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %155
  %159 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %160 = load %struct.request*, %struct.request** %11, align 8
  %161 = load i8*, i8** %16, align 8
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* @GFP_KERNEL, align 4
  %164 = call i32 @blk_rq_map_user(%struct.request_queue* %159, %struct.request* %160, i32* null, i8* %161, i32 %162, i32 %163)
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  br label %176

168:                                              ; preds = %158
  br label %169

169:                                              ; preds = %168, %155
  %170 = load i32*, i32** %9, align 8
  %171 = load %struct.request*, %struct.request** %11, align 8
  %172 = getelementptr inbounds %struct.request, %struct.request* %171, i32 0, i32 4
  store i32* %170, i32** %172, align 8
  %173 = load %struct.request*, %struct.request** %11, align 8
  %174 = getelementptr inbounds %struct.request, %struct.request* %173, i32 0, i32 3
  store i64 0, i64* %174, align 8
  %175 = load %struct.request*, %struct.request** %11, align 8
  store %struct.request* %175, %struct.request** %5, align 8
  br label %204

176:                                              ; preds = %167, %125, %99, %89, %73
  %177 = load %struct.request*, %struct.request** %11, align 8
  %178 = getelementptr inbounds %struct.request, %struct.request* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.request*, %struct.request** %11, align 8
  %181 = getelementptr inbounds %struct.request, %struct.request* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %179, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %176
  %185 = load %struct.request*, %struct.request** %11, align 8
  %186 = getelementptr inbounds %struct.request, %struct.request* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @kfree(i64 %187)
  br label %189

189:                                              ; preds = %184, %176
  %190 = load %struct.request*, %struct.request** %11, align 8
  %191 = call i32 @blk_put_request(%struct.request* %190)
  %192 = load %struct.request*, %struct.request** %12, align 8
  %193 = icmp ne %struct.request* %192, null
  br i1 %193, label %194, label %201

194:                                              ; preds = %189
  %195 = load %struct.request*, %struct.request** %12, align 8
  %196 = getelementptr inbounds %struct.request, %struct.request* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @blk_rq_unmap_user(i32 %197)
  %199 = load %struct.request*, %struct.request** %12, align 8
  %200 = call i32 @blk_put_request(%struct.request* %199)
  br label %201

201:                                              ; preds = %194, %189
  %202 = load i32, i32* %13, align 4
  %203 = call %struct.request* @ERR_PTR(i32 %202)
  store %struct.request* %203, %struct.request** %5, align 8
  br label %204

204:                                              ; preds = %201, %169, %60, %50, %27
  %205 = load %struct.request*, %struct.request** %5, align 8
  ret %struct.request* %205
}

declare dso_local %struct.request* @ERR_PTR(i32) #1

declare dso_local i32 @dprintk(i8*, i64, i32, i64, i32) #1

declare dso_local i32 @bsg_validate_sgv4_hdr(%struct.request_queue*, %struct.sg_io_v4*, i32*) #1

declare dso_local %struct.request* @blk_get_request(%struct.request_queue*, i32, i32) #1

declare dso_local i32 @blk_fill_sgv4_hdr_rq(%struct.request_queue*, %struct.request*, %struct.sg_io_v4*, %struct.bsg_device*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @blk_rq_map_user(%struct.request_queue*, %struct.request*, i32*, i8*, i32, i32) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

declare dso_local i32 @blk_rq_unmap_user(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
