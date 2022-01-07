; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_recv_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_recv_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.cx231xx_i2c* }
%struct.cx231xx_i2c = type { i32, %struct.cx231xx* }
%struct.cx231xx = type { i64, i32 (%struct.cx231xx*, i32, i32*, i32)*, i32 (%struct.cx231xx*, i32, i32*, i32)*, i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)*, i64 }
%struct.cx231xx_i2c_xfer_data = type { i32, i32, i32, i32, i32*, i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }

@TUNER_XC5000 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"GPIO R E A D: Special case BUSY check \0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"GPIO R E A D: addr 0x%x, len %d, saddr 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*)* @cx231xx_i2c_recv_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_i2c_recv_bytes(%struct.i2c_adapter* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca %struct.cx231xx_i2c*, align 8
  %7 = alloca %struct.cx231xx*, align 8
  %8 = alloca %struct.cx231xx_i2c_xfer_data, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %12, i32 0, i32 0
  %14 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %13, align 8
  store %struct.cx231xx_i2c* %14, %struct.cx231xx_i2c** %6, align 8
  %15 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %16 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %15, i32 0, i32 1
  %17 = load %struct.cx231xx*, %struct.cx231xx** %16, align 8
  store %struct.cx231xx* %17, %struct.cx231xx** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %19 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %179

22:                                               ; preds = %2
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 97
  br i1 %26, label %27, label %179

27:                                               ; preds = %22
  %28 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %29 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TUNER_XC5000, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %179

33:                                               ; preds = %27
  %34 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %44, %49
  store i32 %50, i32* %10, align 4
  br label %63

51:                                               ; preds = %33
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %56, %51
  br label %63

63:                                               ; preds = %62, %38
  %64 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %65 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %140

68:                                               ; preds = %63
  %69 = load i32, i32* %10, align 4
  switch i32 %69, label %87 [
    i32 9, label %70
    i32 4, label %86
  ]

70:                                               ; preds = %68
  %71 = call i32 (i32, i8*, ...) @dprintk1(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 0, i32* %75, align 4
  %76 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %80, %70
  store i32 0, i32* %3, align 4
  br label %211

86:                                               ; preds = %68
  store i32 1, i32* %11, align 4
  br label %87

87:                                               ; preds = %68, %86
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %139

90:                                               ; preds = %87
  %91 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %95 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %98 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 8
  %103 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %104 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %102, %107
  %109 = call i32 (i32, i8*, ...) @dprintk1(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %96, i32 %108)
  %110 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %111 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %110, i32 0, i32 1
  %112 = load i32 (%struct.cx231xx*, i32, i32*, i32)*, i32 (%struct.cx231xx*, i32, i32*, i32)** %111, align 8
  %113 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %114 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %115 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %118 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %121 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 %112(%struct.cx231xx* %113, i32 %116, i32* %119, i32 %122)
  store i32 %123, i32* %9, align 4
  %124 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %125 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %124, i32 0, i32 2
  %126 = load i32 (%struct.cx231xx*, i32, i32*, i32)*, i32 (%struct.cx231xx*, i32, i32*, i32)** %125, align 8
  %127 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %128 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %129 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %132 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %135 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 %126(%struct.cx231xx* %127, i32 %130, i32* %133, i32 %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %3, align 4
  br label %211

139:                                              ; preds = %87
  br label %140

140:                                              ; preds = %139, %63
  %141 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %142 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 0
  store i32 %143, i32* %144, align 8
  %145 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %146 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 5
  store i32 %147, i32* %148, align 8
  %149 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %150 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 1
  store i32 %151, i32* %152, align 4
  %153 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %154 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %157, 8
  %159 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %160 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %158, %163
  %165 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 2
  store i32 %164, i32* %165, align 8
  %166 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %167 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 3
  store i32 %168, i32* %169, align 4
  %170 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %171 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 4
  store i32* %172, i32** %173, align 8
  %174 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %175 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %174, i32 0, i32 3
  %176 = load i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)*, i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)** %175, align 8
  %177 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %178 = call i32 %176(%struct.cx231xx_i2c* %177, %struct.cx231xx_i2c_xfer_data* %8)
  store i32 %178, i32* %9, align 4
  br label %203

179:                                              ; preds = %27, %22, %2
  %180 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %181 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 0
  store i32 %182, i32* %183, align 8
  %184 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %185 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 5
  store i32 %186, i32* %187, align 8
  %188 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 1
  store i32 0, i32* %188, align 4
  %189 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 2
  store i32 0, i32* %189, align 8
  %190 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %191 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 3
  store i32 %192, i32* %193, align 4
  %194 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %195 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 4
  store i32* %196, i32** %197, align 8
  %198 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %199 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %198, i32 0, i32 3
  %200 = load i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)*, i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)** %199, align 8
  %201 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %202 = call i32 %200(%struct.cx231xx_i2c* %201, %struct.cx231xx_i2c_xfer_data* %8)
  store i32 %202, i32* %9, align 4
  br label %203

203:                                              ; preds = %179, %140
  %204 = load i32, i32* %9, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %203
  %207 = load i32, i32* %9, align 4
  br label %209

208:                                              ; preds = %203
  br label %209

209:                                              ; preds = %208, %206
  %210 = phi i32 [ %207, %206 ], [ 0, %208 ]
  store i32 %210, i32* %3, align 4
  br label %211

211:                                              ; preds = %209, %90, %85
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i32 @dprintk1(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
