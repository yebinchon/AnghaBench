; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_gather_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_gather_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.packet_data = type { i32, i32, i32, i32*, %struct.bio**, i64, i32, %struct.bio*, i32 }
%struct.bio = type { i32, i32, i32, i32, i32, %struct.bio_vec*, %struct.packet_data*, i32, i32, %struct.bio* }
%struct.bio_vec = type { i32 }

@PACKET_MAX_SIZE = common dso_local global i32 0, align 4
@CD_FRAMESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"pkt_gather_data: zone %llx cached\0A\00", align 1
@pkt_end_io_read = common dso_local global i32 0, align 4
@pkt_bio_destructor = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"pkt_gather_data: Adding frame %d, page:%p offs:%d\0A\00", align 1
@READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"pkt_gather_data: need %d frames for zone %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktcdvd_device*, %struct.packet_data*)* @pkt_gather_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_gather_data(%struct.pktcdvd_device* %0, %struct.packet_data* %1) #0 {
  %3 = alloca %struct.pktcdvd_device*, align 8
  %4 = alloca %struct.packet_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bio_vec*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %3, align 8
  store %struct.packet_data* %1, %struct.packet_data** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* @PACKET_MAX_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %20 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %19, i32 0, i32 7
  %21 = load %struct.bio*, %struct.bio** %20, align 8
  %22 = icmp ne %struct.bio* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %27 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %26, i32 0, i32 2
  %28 = call i32 @atomic_set(i32* %27, i32 0)
  %29 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %30 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %29, i32 0, i32 8
  %31 = call i32 @atomic_set(i32* %30, i32 0)
  %32 = trunc i64 %16 to i32
  %33 = call i32 @memset(i8* %18, i32 0, i32 %32)
  %34 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %35 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %34, i32 0, i32 6
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %38 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %37, i32 0, i32 7
  %39 = load %struct.bio*, %struct.bio** %38, align 8
  store %struct.bio* %39, %struct.bio** %6, align 8
  br label %40

40:                                               ; preds = %96, %2
  %41 = load %struct.bio*, %struct.bio** %6, align 8
  %42 = icmp ne %struct.bio* %41, null
  br i1 %42, label %43, label %100

43:                                               ; preds = %40
  %44 = load %struct.bio*, %struct.bio** %6, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %48 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %46, %49
  %51 = load i32, i32* @CD_FRAMESIZE, align 4
  %52 = ashr i32 %51, 9
  %53 = sdiv i32 %50, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.bio*, %struct.bio** %6, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CD_FRAMESIZE, align 4
  %58 = sdiv i32 %56, %57
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @CD_FRAMESIZE, align 4
  %61 = ashr i32 %60, 9
  %62 = mul nsw i32 %59, %61
  %63 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %64 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %62
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @BUG_ON(i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %72, %73
  %75 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %76 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %74, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUG_ON(i32 %79)
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %92, %43
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %84, %85
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %18, i64 %90
  store i8 1, i8* %91, align 1
  br label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %82

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.bio*, %struct.bio** %6, align 8
  %98 = getelementptr inbounds %struct.bio, %struct.bio* %97, i32 0, i32 9
  %99 = load %struct.bio*, %struct.bio** %98, align 8
  store %struct.bio* %99, %struct.bio** %6, align 8
  br label %40

100:                                              ; preds = %40
  %101 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %102 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %101, i32 0, i32 6
  %103 = call i32 @spin_unlock(i32* %102)
  %104 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %105 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %110 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = trunc i64 %112 to i32
  %114 = call i32 (i8*, i32, ...) @VPRINTK(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %113)
  br label %221

115:                                              ; preds = %100
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %217, %115
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %119 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %220

122:                                              ; preds = %116
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %18, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %217

129:                                              ; preds = %122
  %130 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %131 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %130, i32 0, i32 4
  %132 = load %struct.bio**, %struct.bio*** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.bio*, %struct.bio** %132, i64 %134
  %136 = load %struct.bio*, %struct.bio** %135, align 8
  store %struct.bio* %136, %struct.bio** %6, align 8
  %137 = load %struct.bio*, %struct.bio** %6, align 8
  %138 = getelementptr inbounds %struct.bio, %struct.bio* %137, i32 0, i32 5
  %139 = load %struct.bio_vec*, %struct.bio_vec** %138, align 8
  store %struct.bio_vec* %139, %struct.bio_vec** %12, align 8
  %140 = load %struct.bio*, %struct.bio** %6, align 8
  %141 = call i32 @bio_init(%struct.bio* %140)
  %142 = load %struct.bio*, %struct.bio** %6, align 8
  %143 = getelementptr inbounds %struct.bio, %struct.bio* %142, i32 0, i32 2
  store i32 1, i32* %143, align 8
  %144 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %145 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @CD_FRAMESIZE, align 4
  %149 = ashr i32 %148, 9
  %150 = mul nsw i32 %147, %149
  %151 = add nsw i32 %146, %150
  %152 = load %struct.bio*, %struct.bio** %6, align 8
  %153 = getelementptr inbounds %struct.bio, %struct.bio* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %155 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.bio*, %struct.bio** %6, align 8
  %158 = getelementptr inbounds %struct.bio, %struct.bio* %157, i32 0, i32 8
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* @pkt_end_io_read, align 4
  %160 = load %struct.bio*, %struct.bio** %6, align 8
  %161 = getelementptr inbounds %struct.bio, %struct.bio* %160, i32 0, i32 7
  store i32 %159, i32* %161, align 8
  %162 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %163 = load %struct.bio*, %struct.bio** %6, align 8
  %164 = getelementptr inbounds %struct.bio, %struct.bio* %163, i32 0, i32 6
  store %struct.packet_data* %162, %struct.packet_data** %164, align 8
  %165 = load %struct.bio_vec*, %struct.bio_vec** %12, align 8
  %166 = load %struct.bio*, %struct.bio** %6, align 8
  %167 = getelementptr inbounds %struct.bio, %struct.bio* %166, i32 0, i32 5
  store %struct.bio_vec* %165, %struct.bio_vec** %167, align 8
  %168 = load i32, i32* @pkt_bio_destructor, align 4
  %169 = load %struct.bio*, %struct.bio** %6, align 8
  %170 = getelementptr inbounds %struct.bio, %struct.bio* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @CD_FRAMESIZE, align 4
  %173 = mul nsw i32 %171, %172
  %174 = load i32, i32* @PAGE_SIZE, align 4
  %175 = sdiv i32 %173, %174
  store i32 %175, i32* %13, align 4
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @CD_FRAMESIZE, align 4
  %178 = mul nsw i32 %176, %177
  %179 = load i32, i32* @PAGE_SIZE, align 4
  %180 = srem i32 %178, %179
  store i32 %180, i32* %14, align 4
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %183 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %14, align 4
  %190 = call i32 (i8*, i32, ...) @VPRINTK(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %181, i32 %188, i32 %189)
  %191 = load %struct.bio*, %struct.bio** %6, align 8
  %192 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %193 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @CD_FRAMESIZE, align 4
  %200 = load i32, i32* %14, align 4
  %201 = call i32 @bio_add_page(%struct.bio* %191, i32 %198, i32 %199, i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %129
  %204 = call i32 (...) @BUG()
  br label %205

205:                                              ; preds = %203, %129
  %206 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %207 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %206, i32 0, i32 2
  %208 = call i32 @atomic_inc(i32* %207)
  %209 = load i32, i32* @READ, align 4
  %210 = load %struct.bio*, %struct.bio** %6, align 8
  %211 = getelementptr inbounds %struct.bio, %struct.bio* %210, i32 0, i32 3
  store i32 %209, i32* %211, align 4
  %212 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %213 = load %struct.bio*, %struct.bio** %6, align 8
  %214 = call i32 @pkt_queue_bio(%struct.pktcdvd_device* %212, %struct.bio* %213)
  %215 = load i32, i32* %5, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %5, align 4
  br label %217

217:                                              ; preds = %205, %128
  %218 = load i32, i32* %7, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %7, align 4
  br label %116

220:                                              ; preds = %116
  br label %221

221:                                              ; preds = %220, %108
  %222 = load i32, i32* %5, align 4
  %223 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %224 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = call i32 (i8*, i32, ...) @VPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %222, i64 %226)
  %228 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %229 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 4
  %233 = load i32, i32* %5, align 4
  %234 = load i32, i32* @CD_FRAMESIZE, align 4
  %235 = ashr i32 %234, 9
  %236 = mul nsw i32 %233, %235
  %237 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %238 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, %236
  store i32 %241, i32* %239, align 4
  %242 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %242)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @atomic_set(i32*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @VPRINTK(i8*, i32, ...) #2

declare dso_local i32 @bio_init(%struct.bio*) #2

declare dso_local i32 @bio_add_page(%struct.bio*, i32, i32, i32) #2

declare dso_local i32 @BUG(...) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i32 @pkt_queue_bio(%struct.pktcdvd_device*, %struct.bio*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
