; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bw-qcam.c_qc_readbytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bw-qcam.c_qc_readbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcam_device = type { i32, i32, i32 }

@qc_readbytes.state = internal global i32 0, align 4
@QC_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcam_device*, i8*)* @qc_readbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qc_readbytes(%struct.qcam_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcam_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qcam_device* %0, %struct.qcam_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 1, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* @qc_readbytes.state, align 4
  store i32 0, i32* %3, align 4
  br label %193

14:                                               ; preds = %2
  %15 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %16 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @QC_MODE_MASK, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %191 [
    i32 129, label %20
    i32 128, label %115
  ]

20:                                               ; preds = %14
  %21 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %22 = call i32 @write_lpcontrol(%struct.qcam_device* %21, i32 38)
  %23 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %24 = call i32 @qc_waithand2(%struct.qcam_device* %23, i32 1)
  %25 = ashr i32 %24, 1
  store i32 %25, i32* %8, align 4
  %26 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %27 = call i32 @read_lpstatus(%struct.qcam_device* %26)
  %28 = ashr i32 %27, 3
  %29 = and i32 %28, 31
  store i32 %29, i32* %7, align 4
  %30 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %31 = call i32 @write_lpcontrol(%struct.qcam_device* %30, i32 46)
  %32 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %33 = call i32 @qc_waithand2(%struct.qcam_device* %32, i32 0)
  %34 = ashr i32 %33, 1
  store i32 %34, i32* %10, align 4
  %35 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %36 = call i32 @read_lpstatus(%struct.qcam_device* %35)
  %37 = ashr i32 %36, 3
  %38 = and i32 %37, 31
  store i32 %38, i32* %9, align 4
  %39 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %40 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %114 [
    i32 4, label %42
    i32 6, label %85
  ]

42:                                               ; preds = %20
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 15
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 %45, i8* %47, align 1
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 112
  %50 = lshr i32 %49, 4
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 1
  %53 = shl i32 %52, 3
  %54 = or i32 %50, %53
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  store i8 %55, i8* %57, align 1
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 30
  %60 = lshr i32 %59, 1
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  store i8 %61, i8* %63, align 1
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %64, 15
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 3
  store i8 %66, i8* %68, align 1
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, 112
  %71 = lshr i32 %70, 4
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, 1
  %74 = shl i32 %73, 3
  %75 = or i32 %71, %74
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 4
  store i8 %76, i8* %78, align 1
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, 30
  %81 = lshr i32 %80, 1
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 5
  store i8 %82, i8* %84, align 1
  store i32 6, i32* %6, align 4
  br label %114

85:                                               ; preds = %20
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %86, 63
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  store i8 %88, i8* %90, align 1
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, 64
  %93 = lshr i32 %92, 6
  %94 = load i32, i32* %7, align 4
  %95 = shl i32 %94, 1
  %96 = or i32 %93, %95
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  store i8 %97, i8* %99, align 1
  %100 = load i32, i32* %10, align 4
  %101 = and i32 %100, 63
  %102 = trunc i32 %101 to i8
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  store i8 %102, i8* %104, align 1
  %105 = load i32, i32* %10, align 4
  %106 = and i32 %105, 64
  %107 = lshr i32 %106, 6
  %108 = load i32, i32* %9, align 4
  %109 = shl i32 %108, 1
  %110 = or i32 %107, %109
  %111 = trunc i32 %110 to i8
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 3
  store i8 %111, i8* %113, align 1
  store i32 4, i32* %6, align 4
  br label %114

114:                                              ; preds = %20, %85, %42
  br label %191

115:                                              ; preds = %14
  %116 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %117 = call i32 @write_lpcontrol(%struct.qcam_device* %116, i32 6)
  %118 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %119 = call i32 @qc_waithand(%struct.qcam_device* %118, i32 1)
  %120 = and i32 %119, 240
  %121 = ashr i32 %120, 4
  store i32 %121, i32* %8, align 4
  %122 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %123 = call i32 @write_lpcontrol(%struct.qcam_device* %122, i32 14)
  %124 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %125 = call i32 @qc_waithand(%struct.qcam_device* %124, i32 0)
  %126 = and i32 %125, 240
  %127 = ashr i32 %126, 4
  store i32 %127, i32* %7, align 4
  %128 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %129 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  switch i32 %130, label %190 [
    i32 4, label %131
    i32 6, label %140
  ]

131:                                              ; preds = %115
  %132 = load i32, i32* %8, align 4
  %133 = trunc i32 %132 to i8
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  store i8 %133, i8* %135, align 1
  %136 = load i32, i32* %7, align 4
  %137 = trunc i32 %136 to i8
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  store i8 %137, i8* %139, align 1
  store i32 2, i32* %6, align 4
  br label %190

140:                                              ; preds = %115
  %141 = load i32, i32* @qc_readbytes.state, align 4
  switch i32 %141, label %189 [
    i32 0, label %142
    i32 1, label %157
    i32 2, label %170
  ]

142:                                              ; preds = %140
  %143 = load i32, i32* %8, align 4
  %144 = shl i32 %143, 2
  %145 = load i32, i32* %7, align 4
  %146 = and i32 %145, 12
  %147 = lshr i32 %146, 2
  %148 = or i32 %144, %147
  %149 = trunc i32 %148 to i8
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  store i8 %149, i8* %151, align 1
  %152 = load i32, i32* %7, align 4
  %153 = and i32 %152, 3
  %154 = shl i32 %153, 4
  %155 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %156 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  store i32 1, i32* @qc_readbytes.state, align 4
  store i32 1, i32* %6, align 4
  br label %189

157:                                              ; preds = %140
  %158 = load i32, i32* %8, align 4
  %159 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %160 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %158, %161
  %163 = trunc i32 %162 to i8
  %164 = load i8*, i8** %5, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  store i8 %163, i8* %165, align 1
  %166 = load i32, i32* %7, align 4
  %167 = shl i32 %166, 2
  %168 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %169 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  store i32 2, i32* @qc_readbytes.state, align 4
  store i32 1, i32* %6, align 4
  br label %189

170:                                              ; preds = %140
  %171 = load i32, i32* %8, align 4
  %172 = and i32 %171, 12
  %173 = lshr i32 %172, 2
  %174 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %175 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %173, %176
  %178 = trunc i32 %177 to i8
  %179 = load i8*, i8** %5, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 0
  store i8 %178, i8* %180, align 1
  %181 = load i32, i32* %8, align 4
  %182 = and i32 %181, 3
  %183 = shl i32 %182, 4
  %184 = load i32, i32* %7, align 4
  %185 = or i32 %183, %184
  %186 = trunc i32 %185 to i8
  %187 = load i8*, i8** %5, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 1
  store i8 %186, i8* %188, align 1
  store i32 0, i32* @qc_readbytes.state, align 4
  store i32 2, i32* %6, align 4
  br label %189

189:                                              ; preds = %140, %170, %157, %142
  br label %190

190:                                              ; preds = %115, %189, %131
  br label %191

191:                                              ; preds = %14, %190, %114
  %192 = load i32, i32* %6, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %191, %13
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @write_lpcontrol(%struct.qcam_device*, i32) #1

declare dso_local i32 @qc_waithand2(%struct.qcam_device*, i32) #1

declare dso_local i32 @read_lpstatus(%struct.qcam_device*) #1

declare dso_local i32 @qc_waithand(%struct.qcam_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
