; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_cpia1.c_do_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_cpia1.c_do_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32* }
%struct.sd = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }

@CPIA_COMMAND_WriteMCPort = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32)* @do_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_command(%struct.gspca_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gspca_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sd*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [8 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %19 = bitcast %struct.gspca_dev* %18 to %struct.sd*
  store %struct.sd* %19, %struct.sd** %14, align 8
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %23 [
    i32 136, label %21
    i32 131, label %21
    i32 135, label %21
    i32 130, label %21
    i32 133, label %21
    i32 134, label %21
    i32 132, label %21
    i32 129, label %22
    i32 128, label %22
  ]

21:                                               ; preds = %6, %6, %6, %6, %6, %6, %6
  store i32 8, i32* %16, align 4
  br label %24

22:                                               ; preds = %6, %6
  store i32 4, i32* %16, align 4
  br label %24

23:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  br label %24

24:                                               ; preds = %23, %22, %21
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 8
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  store i32 %26, i32* %27, align 16
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 255
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 2
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %11, align 4
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 3
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %12, align 4
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 4
  store i32 %35, i32* %36, align 16
  %37 = load i32, i32* %13, align 4
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 5
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %16, align 4
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 6
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 7
  store i32 0, i32* %41, align 4
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %44 = call i32 @cpia_usb_transferCmd(%struct.gspca_dev* %42, i32* %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %24
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %7, align 4
  br label %422

49:                                               ; preds = %24
  %50 = load i32, i32* %9, align 4
  switch i32 %50, label %421 [
    i32 136, label %51
    i32 131, label %88
    i32 135, label %137
    i32 130, label %210
    i32 133, label %245
    i32 134, label %273
    i32 132, label %301
    i32 129, label %374
  ]

51:                                               ; preds = %49
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %53 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sd*, %struct.sd** %14, align 8
  %58 = getelementptr inbounds %struct.sd, %struct.sd* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 4
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %62 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sd*, %struct.sd** %14, align 8
  %67 = getelementptr inbounds %struct.sd, %struct.sd* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  store i32 %65, i32* %69, align 4
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %71 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sd*, %struct.sd** %14, align 8
  %76 = getelementptr inbounds %struct.sd, %struct.sd* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 2
  store i32 %74, i32* %78, align 4
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %80 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sd*, %struct.sd** %14, align 8
  %85 = getelementptr inbounds %struct.sd, %struct.sd* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 3
  store i32 %83, i32* %87, align 4
  br label %421

88:                                               ; preds = %49
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %90 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %95 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 8
  %100 = or i32 %93, %99
  %101 = load %struct.sd*, %struct.sd** %14, align 8
  %102 = getelementptr inbounds %struct.sd, %struct.sd* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 4
  %105 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %106 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %111 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 8
  %116 = or i32 %109, %115
  %117 = load %struct.sd*, %struct.sd** %14, align 8
  %118 = getelementptr inbounds %struct.sd, %struct.sd* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  store i32 %116, i32* %120, align 4
  %121 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %122 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %127 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 5
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 8
  %132 = or i32 %125, %131
  %133 = load %struct.sd*, %struct.sd** %14, align 8
  %134 = getelementptr inbounds %struct.sd, %struct.sd* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 2
  store i32 %132, i32* %136, align 4
  br label %421

137:                                              ; preds = %49
  %138 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %139 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.sd*, %struct.sd** %14, align 8
  %144 = getelementptr inbounds %struct.sd, %struct.sd* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  store i32 %142, i32* %146, align 4
  %147 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %148 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.sd*, %struct.sd** %14, align 8
  %153 = getelementptr inbounds %struct.sd, %struct.sd* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  store i32 %151, i32* %155, align 4
  %156 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %157 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.sd*, %struct.sd** %14, align 8
  %162 = getelementptr inbounds %struct.sd, %struct.sd* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 2
  store i32 %160, i32* %164, align 4
  %165 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %166 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.sd*, %struct.sd** %14, align 8
  %171 = getelementptr inbounds %struct.sd, %struct.sd* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 3
  store i32 %169, i32* %173, align 4
  %174 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %175 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 4
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.sd*, %struct.sd** %14, align 8
  %180 = getelementptr inbounds %struct.sd, %struct.sd* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 5
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 4
  store i32 %178, i32* %182, align 4
  %183 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %184 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 5
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.sd*, %struct.sd** %14, align 8
  %189 = getelementptr inbounds %struct.sd, %struct.sd* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 5
  store i32 %187, i32* %191, align 4
  %192 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %193 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 6
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.sd*, %struct.sd** %14, align 8
  %198 = getelementptr inbounds %struct.sd, %struct.sd* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 5
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 6
  store i32 %196, i32* %200, align 4
  %201 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %202 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 7
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.sd*, %struct.sd** %14, align 8
  %207 = getelementptr inbounds %struct.sd, %struct.sd* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 7
  store i32 %205, i32* %209, align 4
  br label %421

210:                                              ; preds = %49
  %211 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %212 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.sd*, %struct.sd** %14, align 8
  %217 = getelementptr inbounds %struct.sd, %struct.sd* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  store i32 %215, i32* %219, align 4
  %220 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %221 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.sd*, %struct.sd** %14, align 8
  %226 = getelementptr inbounds %struct.sd, %struct.sd* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  store i32 %224, i32* %228, align 4
  %229 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %230 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 2
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %235 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 3
  %238 = load i32, i32* %237, align 4
  %239 = shl i32 %238, 8
  %240 = or i32 %233, %239
  %241 = load %struct.sd*, %struct.sd** %14, align 8
  %242 = getelementptr inbounds %struct.sd, %struct.sd* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 2
  store i32 %240, i32* %244, align 4
  br label %421

245:                                              ; preds = %49
  %246 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %247 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.sd*, %struct.sd** %14, align 8
  %252 = getelementptr inbounds %struct.sd, %struct.sd* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  store i32 %250, i32* %254, align 4
  %255 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %256 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.sd*, %struct.sd** %14, align 8
  %261 = getelementptr inbounds %struct.sd, %struct.sd* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 1
  store i32 %259, i32* %263, align 4
  %264 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %265 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 2
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.sd*, %struct.sd** %14, align 8
  %270 = getelementptr inbounds %struct.sd, %struct.sd* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 2
  store i32 %268, i32* %272, align 4
  br label %421

273:                                              ; preds = %49
  %274 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %275 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.sd*, %struct.sd** %14, align 8
  %280 = getelementptr inbounds %struct.sd, %struct.sd* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 0
  store i32 %278, i32* %282, align 4
  %283 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %284 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.sd*, %struct.sd** %14, align 8
  %289 = getelementptr inbounds %struct.sd, %struct.sd* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 1
  store i32 %287, i32* %291, align 4
  %292 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %293 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 2
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.sd*, %struct.sd** %14, align 8
  %298 = getelementptr inbounds %struct.sd, %struct.sd* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 2
  store i32 %296, i32* %300, align 4
  br label %421

301:                                              ; preds = %49
  %302 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %303 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %302, i32 0, i32 0
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.sd*, %struct.sd** %14, align 8
  %308 = getelementptr inbounds %struct.sd, %struct.sd* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 0
  store i32 %306, i32* %310, align 4
  %311 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %312 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 1
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.sd*, %struct.sd** %14, align 8
  %317 = getelementptr inbounds %struct.sd, %struct.sd* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 1
  store i32 %315, i32* %319, align 4
  %320 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %321 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %320, i32 0, i32 0
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 2
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.sd*, %struct.sd** %14, align 8
  %326 = getelementptr inbounds %struct.sd, %struct.sd* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 2
  store i32 %324, i32* %328, align 4
  %329 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %330 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 3
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.sd*, %struct.sd** %14, align 8
  %335 = getelementptr inbounds %struct.sd, %struct.sd* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 3
  store i32 %333, i32* %337, align 4
  %338 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %339 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 4
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.sd*, %struct.sd** %14, align 8
  %344 = getelementptr inbounds %struct.sd, %struct.sd* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 4
  store i32 %342, i32* %346, align 4
  %347 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %348 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %347, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 5
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.sd*, %struct.sd** %14, align 8
  %353 = getelementptr inbounds %struct.sd, %struct.sd* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 5
  store i32 %351, i32* %355, align 4
  %356 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %357 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %356, i32 0, i32 0
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 6
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.sd*, %struct.sd** %14, align 8
  %362 = getelementptr inbounds %struct.sd, %struct.sd* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 6
  store i32 %360, i32* %364, align 4
  %365 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %366 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %365, i32 0, i32 0
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 7
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.sd*, %struct.sd** %14, align 8
  %371 = getelementptr inbounds %struct.sd, %struct.sd* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 7
  store i32 %369, i32* %373, align 4
  br label %421

374:                                              ; preds = %49
  %375 = load %struct.sd*, %struct.sd** %14, align 8
  %376 = getelementptr inbounds %struct.sd, %struct.sd* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %382, label %381

381:                                              ; preds = %374
  br label %421

382:                                              ; preds = %374
  %383 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %384 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %383, i32 0, i32 0
  %385 = load i32*, i32** %384, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 1
  %387 = load i32, i32* %386, align 4
  %388 = and i32 %387, 2
  %389 = icmp eq i32 %388, 0
  %390 = zext i1 %389 to i32
  %391 = load %struct.sd*, %struct.sd** %14, align 8
  %392 = getelementptr inbounds %struct.sd, %struct.sd* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %393, i32 0, i32 0
  store i32 %390, i32* %394, align 4
  %395 = load %struct.sd*, %struct.sd** %14, align 8
  %396 = getelementptr inbounds %struct.sd, %struct.sd* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %408

401:                                              ; preds = %382
  %402 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %403 = load i32, i32* @CPIA_COMMAND_WriteMCPort, align 4
  %404 = call i32 @do_command(%struct.gspca_dev* %402, i32 %403, i32 3, i32 223, i32 223, i32 0)
  %405 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %406 = load i32, i32* @CPIA_COMMAND_WriteMCPort, align 4
  %407 = call i32 @do_command(%struct.gspca_dev* %405, i32 %406, i32 3, i32 255, i32 255, i32 0)
  br label %408

408:                                              ; preds = %401, %382
  %409 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %410 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %409, i32 0, i32 0
  %411 = load i32*, i32** %410, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 2
  %413 = load i32, i32* %412, align 4
  %414 = and i32 %413, 64
  %415 = icmp eq i32 %414, 0
  %416 = zext i1 %415 to i32
  %417 = load %struct.sd*, %struct.sd** %14, align 8
  %418 = getelementptr inbounds %struct.sd, %struct.sd* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %419, i32 0, i32 1
  store i32 %416, i32* %420, align 4
  br label %421

421:                                              ; preds = %49, %408, %381, %301, %273, %245, %210, %137, %88, %51
  store i32 0, i32* %7, align 4
  br label %422

422:                                              ; preds = %421, %47
  %423 = load i32, i32* %7, align 4
  ret i32 %423
}

declare dso_local i32 @cpia_usb_transferCmd(%struct.gspca_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
