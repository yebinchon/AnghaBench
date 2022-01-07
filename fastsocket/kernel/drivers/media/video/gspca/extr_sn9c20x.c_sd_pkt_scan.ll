; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sd = type { i32*, i32 }

@sd_pkt_scan.frame_header = internal global [6 x i32] [i32 255, i32 255, i32 0, i32 196, i32 196, i32 150], align 16
@LAST_PACKET = common dso_local global i64 0, align 8
@MODE_JPEG = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i64 0, align 8
@JPEG_HDR_SZ = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 64
  br i1 %12, label %13, label %160

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @memcmp(i32* %14, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @sd_pkt_scan.frame_header, i64 0, i64 0), i32 6)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %160

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 35
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 2
  %22 = and i32 %21, 3
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 20
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 2
  %27 = or i32 %22, %26
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 19
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 10
  %32 = or i32 %27, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 35
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 4
  %37 = and i32 %36, 3
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 22
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 2
  %42 = or i32 %37, %41
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 21
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 10
  %47 = or i32 %42, %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 35
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 6
  %54 = and i32 %53, 3
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 24
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 2
  %59 = or i32 %54, %58
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 23
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 10
  %64 = or i32 %59, %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 36
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 3
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 26
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 2
  %75 = or i32 %70, %74
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 25
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 10
  %80 = or i32 %75, %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %8, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 36
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 2
  %87 = and i32 %86, 3
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 28
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 2
  %92 = or i32 %87, %91
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 27
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 10
  %97 = or i32 %92, %96
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 36
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 4
  %104 = and i32 %103, 3
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 30
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %107, 2
  %109 = or i32 %104, %108
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 29
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 10
  %114 = or i32 %109, %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %8, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 36
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 6
  %121 = and i32 %120, 3
  %122 = load i32*, i32** %5, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 32
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 2
  %126 = or i32 %121, %125
  %127 = load i32*, i32** %5, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 31
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 10
  %131 = or i32 %126, %130
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %8, align 4
  %134 = load i32*, i32** %5, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 44
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 4
  %138 = and i32 %137, 3
  %139 = load i32*, i32** %5, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 34
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 2
  %143 = or i32 %138, %142
  %144 = load i32*, i32** %5, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 33
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 10
  %148 = or i32 %143, %147
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = ashr i32 %151, 9
  store i32 %152, i32* %8, align 4
  %153 = load %struct.sd*, %struct.sd** %7, align 8
  %154 = getelementptr inbounds %struct.sd, %struct.sd* %153, i32 0, i32 1
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @atomic_set(i32* %154, i32 %155)
  %157 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %158 = load i64, i64* @LAST_PACKET, align 8
  %159 = call i32 @gspca_frame_add(%struct.gspca_dev* %157, i64 %158, i32* null, i32 0)
  br label %208

160:                                              ; preds = %13, %3
  %161 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %162 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @LAST_PACKET, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %202

166:                                              ; preds = %160
  %167 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %168 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %172 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @MODE_JPEG, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %166
  %183 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %184 = load i64, i64* @FIRST_PACKET, align 8
  %185 = load %struct.sd*, %struct.sd** %7, align 8
  %186 = getelementptr inbounds %struct.sd, %struct.sd* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* @JPEG_HDR_SZ, align 4
  %189 = call i32 @gspca_frame_add(%struct.gspca_dev* %183, i64 %184, i32* %187, i32 %188)
  %190 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %191 = load i64, i64* @INTER_PACKET, align 8
  %192 = load i32*, i32** %5, align 8
  %193 = load i32, i32* %6, align 4
  %194 = call i32 @gspca_frame_add(%struct.gspca_dev* %190, i64 %191, i32* %192, i32 %193)
  br label %201

195:                                              ; preds = %166
  %196 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %197 = load i64, i64* @FIRST_PACKET, align 8
  %198 = load i32*, i32** %5, align 8
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @gspca_frame_add(%struct.gspca_dev* %196, i64 %197, i32* %198, i32 %199)
  br label %201

201:                                              ; preds = %195, %182
  br label %208

202:                                              ; preds = %160
  %203 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %204 = load i64, i64* @INTER_PACKET, align 8
  %205 = load i32*, i32** %5, align 8
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @gspca_frame_add(%struct.gspca_dev* %203, i64 %204, i32* %205, i32 %206)
  br label %208

208:                                              ; preds = %17, %202, %201
  ret void
}

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
