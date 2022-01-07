; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_etoms.c_Et_init2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_etoms.c_Et_init2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@Et_init2.FormLine = internal constant [6 x i32] [i32 132, i32 3, i32 20, i32 244, i32 1, i32 5], align 16
@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Open Init2 ET\00", align 1
@ET_GPIO_DIR_CTRL = common dso_local global i32 0, align 4
@ET_GPIO_OUT = common dso_local global i32 0, align 4
@ET_GPIO_IN = common dso_local global i32 0, align 4
@ET_ClCK = common dso_local global i32 0, align 4
@ET_CTRL = common dso_local global i32 0, align 4
@ET_COMP_VAL1 = common dso_local global i32 0, align 4
@ET_COMP_VAL0 = common dso_local global i32 0, align 4
@ET_COMP = common dso_local global i32 0, align 4
@ET_MAXQt = common dso_local global i32 0, align 4
@ET_MINQt = common dso_local global i32 0, align 4
@ET_REG1d = common dso_local global i32 0, align 4
@ET_REG1e = common dso_local global i32 0, align 4
@ET_REG1f = common dso_local global i32 0, align 4
@ET_REG20 = common dso_local global i32 0, align 4
@ET_REG21 = common dso_local global i32 0, align 4
@ET_REG22 = common dso_local global i32 0, align 4
@ET_REG23 = common dso_local global i32 0, align 4
@ET_REG24 = common dso_local global i32 0, align 4
@ET_REG25 = common dso_local global i32 0, align 4
@ET_O_RED = common dso_local global i32 0, align 4
@ET_O_GREEN1 = common dso_local global i32 0, align 4
@ET_O_BLUE = common dso_local global i32 0, align 4
@ET_O_GREEN2 = common dso_local global i32 0, align 4
@ET_G_RED = common dso_local global i32 0, align 4
@ET_G_GREEN1 = common dso_local global i32 0, align 4
@ET_G_BLUE = common dso_local global i32 0, align 4
@ET_G_GREEN2 = common dso_local global i32 0, align 4
@ET_G_GR_H = common dso_local global i32 0, align 4
@ET_G_GB_H = common dso_local global i32 0, align 4
@ET_SYNCHRO = common dso_local global i32 0, align 4
@ET_STARTX = common dso_local global i32 0, align 4
@ET_STARTY = common dso_local global i32 0, align 4
@ET_WIDTH_LOW = common dso_local global i32 0, align 4
@ET_HEIGTH_LOW = common dso_local global i32 0, align 4
@ET_W_H_HEIGTH = common dso_local global i32 0, align 4
@ET_REG6e = common dso_local global i32 0, align 4
@ET_REG6f = common dso_local global i32 0, align 4
@ET_REG70 = common dso_local global i32 0, align 4
@ET_REG71 = common dso_local global i32 0, align 4
@ET_REG72 = common dso_local global i32 0, align 4
@ET_REG73 = common dso_local global i32 0, align 4
@ET_REG74 = common dso_local global i32 0, align 4
@ET_REG75 = common dso_local global i32 0, align 4
@ET_PXL_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @Et_init2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Et_init2(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load i32, i32* @D_STREAM, align 4
  %5 = call i32 @PDEBUG(i32 %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = load i32, i32* @ET_GPIO_DIR_CTRL, align 4
  %8 = call i32 @reg_w_val(%struct.gspca_dev* %6, i32 %7, i32 47)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = load i32, i32* @ET_GPIO_OUT, align 4
  %11 = call i32 @reg_w_val(%struct.gspca_dev* %9, i32 %10, i32 16)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = load i32, i32* @ET_GPIO_IN, align 4
  %14 = call i32 @reg_r(%struct.gspca_dev* %12, i32 %13, i32 1)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = load i32, i32* @ET_ClCK, align 4
  %17 = call i32 @reg_w_val(%struct.gspca_dev* %15, i32 %16, i32 20)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = load i32, i32* @ET_CTRL, align 4
  %20 = call i32 @reg_w_val(%struct.gspca_dev* %18, i32 %19, i32 27)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @ET_COMP_VAL1, align 4
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @ET_COMP_VAL0, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = load i32, i32* @ET_COMP, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @reg_w_val(%struct.gspca_dev* %39, i32 %40, i32 %41)
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = load i32, i32* @ET_MAXQt, align 4
  %45 = call i32 @reg_w_val(%struct.gspca_dev* %43, i32 %44, i32 31)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = load i32, i32* @ET_MINQt, align 4
  %48 = call i32 @reg_w_val(%struct.gspca_dev* %46, i32 %47, i32 4)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = load i32, i32* @ET_REG1d, align 4
  %51 = call i32 @reg_w_val(%struct.gspca_dev* %49, i32 %50, i32 255)
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %53 = load i32, i32* @ET_REG1e, align 4
  %54 = call i32 @reg_w_val(%struct.gspca_dev* %52, i32 %53, i32 255)
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = load i32, i32* @ET_REG1f, align 4
  %57 = call i32 @reg_w_val(%struct.gspca_dev* %55, i32 %56, i32 255)
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %59 = load i32, i32* @ET_REG20, align 4
  %60 = call i32 @reg_w_val(%struct.gspca_dev* %58, i32 %59, i32 53)
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %62 = load i32, i32* @ET_REG21, align 4
  %63 = call i32 @reg_w_val(%struct.gspca_dev* %61, i32 %62, i32 1)
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %65 = load i32, i32* @ET_REG22, align 4
  %66 = call i32 @reg_w_val(%struct.gspca_dev* %64, i32 %65, i32 0)
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %68 = load i32, i32* @ET_REG23, align 4
  %69 = call i32 @reg_w_val(%struct.gspca_dev* %67, i32 %68, i32 255)
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %71 = load i32, i32* @ET_REG24, align 4
  %72 = call i32 @reg_w_val(%struct.gspca_dev* %70, i32 %71, i32 255)
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %74 = load i32, i32* @ET_REG25, align 4
  %75 = call i32 @reg_w_val(%struct.gspca_dev* %73, i32 %74, i32 15)
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = call i32 @reg_w_val(%struct.gspca_dev* %76, i32 48, i32 17)
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %79 = call i32 @reg_w_val(%struct.gspca_dev* %78, i32 49, i32 64)
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %81 = call i32 @reg_w_val(%struct.gspca_dev* %80, i32 50, i32 0)
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %83 = load i32, i32* @ET_O_RED, align 4
  %84 = call i32 @reg_w_val(%struct.gspca_dev* %82, i32 %83, i32 0)
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %86 = load i32, i32* @ET_O_GREEN1, align 4
  %87 = call i32 @reg_w_val(%struct.gspca_dev* %85, i32 %86, i32 0)
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %89 = load i32, i32* @ET_O_BLUE, align 4
  %90 = call i32 @reg_w_val(%struct.gspca_dev* %88, i32 %89, i32 0)
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %92 = load i32, i32* @ET_O_GREEN2, align 4
  %93 = call i32 @reg_w_val(%struct.gspca_dev* %91, i32 %92, i32 0)
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %95 = load i32, i32* @ET_G_RED, align 4
  %96 = call i32 @reg_w_val(%struct.gspca_dev* %94, i32 %95, i32 128)
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %98 = load i32, i32* @ET_G_GREEN1, align 4
  %99 = call i32 @reg_w_val(%struct.gspca_dev* %97, i32 %98, i32 128)
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %101 = load i32, i32* @ET_G_BLUE, align 4
  %102 = call i32 @reg_w_val(%struct.gspca_dev* %100, i32 %101, i32 128)
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %104 = load i32, i32* @ET_G_GREEN2, align 4
  %105 = call i32 @reg_w_val(%struct.gspca_dev* %103, i32 %104, i32 128)
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %107 = load i32, i32* @ET_G_GR_H, align 4
  %108 = call i32 @reg_w_val(%struct.gspca_dev* %106, i32 %107, i32 0)
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %110 = load i32, i32* @ET_G_GB_H, align 4
  %111 = call i32 @reg_w_val(%struct.gspca_dev* %109, i32 %110, i32 0)
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %113 = call i32 @reg_w_val(%struct.gspca_dev* %112, i32 97, i32 128)
  %114 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %115 = call i32 @reg_w_val(%struct.gspca_dev* %114, i32 98, i32 2)
  %116 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %117 = call i32 @reg_w_val(%struct.gspca_dev* %116, i32 99, i32 3)
  %118 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %119 = call i32 @reg_w_val(%struct.gspca_dev* %118, i32 100, i32 20)
  %120 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %121 = call i32 @reg_w_val(%struct.gspca_dev* %120, i32 101, i32 14)
  %122 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %123 = call i32 @reg_w_val(%struct.gspca_dev* %122, i32 102, i32 2)
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %125 = call i32 @reg_w_val(%struct.gspca_dev* %124, i32 103, i32 2)
  %126 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %127 = load i32, i32* @ET_SYNCHRO, align 4
  %128 = call i32 @reg_w_val(%struct.gspca_dev* %126, i32 %127, i32 143)
  %129 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %130 = load i32, i32* @ET_STARTX, align 4
  %131 = call i32 @reg_w_val(%struct.gspca_dev* %129, i32 %130, i32 105)
  %132 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %133 = load i32, i32* @ET_STARTY, align 4
  %134 = call i32 @reg_w_val(%struct.gspca_dev* %132, i32 %133, i32 13)
  %135 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %136 = load i32, i32* @ET_WIDTH_LOW, align 4
  %137 = call i32 @reg_w_val(%struct.gspca_dev* %135, i32 %136, i32 128)
  %138 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %139 = load i32, i32* @ET_HEIGTH_LOW, align 4
  %140 = call i32 @reg_w_val(%struct.gspca_dev* %138, i32 %139, i32 224)
  %141 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %142 = load i32, i32* @ET_W_H_HEIGTH, align 4
  %143 = call i32 @reg_w_val(%struct.gspca_dev* %141, i32 %142, i32 96)
  %144 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %145 = load i32, i32* @ET_REG6e, align 4
  %146 = call i32 @reg_w_val(%struct.gspca_dev* %144, i32 %145, i32 134)
  %147 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %148 = load i32, i32* @ET_REG6f, align 4
  %149 = call i32 @reg_w_val(%struct.gspca_dev* %147, i32 %148, i32 1)
  %150 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %151 = load i32, i32* @ET_REG70, align 4
  %152 = call i32 @reg_w_val(%struct.gspca_dev* %150, i32 %151, i32 38)
  %153 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %154 = load i32, i32* @ET_REG71, align 4
  %155 = call i32 @reg_w_val(%struct.gspca_dev* %153, i32 %154, i32 122)
  %156 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %157 = load i32, i32* @ET_REG72, align 4
  %158 = call i32 @reg_w_val(%struct.gspca_dev* %156, i32 %157, i32 1)
  %159 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %160 = load i32, i32* @ET_REG73, align 4
  %161 = call i32 @reg_w_val(%struct.gspca_dev* %159, i32 %160, i32 0)
  %162 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %163 = load i32, i32* @ET_REG74, align 4
  %164 = call i32 @reg_w_val(%struct.gspca_dev* %162, i32 %163, i32 24)
  %165 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %166 = load i32, i32* @ET_REG75, align 4
  %167 = call i32 @reg_w_val(%struct.gspca_dev* %165, i32 %166, i32 15)
  %168 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %169 = call i32 @reg_w_val(%struct.gspca_dev* %168, i32 138, i32 32)
  %170 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %171 = call i32 @reg_w_val(%struct.gspca_dev* %170, i32 141, i32 15)
  %172 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %173 = call i32 @reg_w_val(%struct.gspca_dev* %172, i32 142, i32 8)
  %174 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %175 = call i32 @reg_w_val(%struct.gspca_dev* %174, i32 3, i32 8)
  %176 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %177 = load i32, i32* @ET_PXL_CLK, align 4
  %178 = call i32 @reg_w_val(%struct.gspca_dev* %176, i32 %177, i32 3)
  %179 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %180 = call i32 @reg_w_val(%struct.gspca_dev* %179, i32 129, i32 255)
  %181 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %182 = call i32 @reg_w_val(%struct.gspca_dev* %181, i32 128, i32 0)
  %183 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %184 = call i32 @reg_w_val(%struct.gspca_dev* %183, i32 129, i32 255)
  %185 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %186 = call i32 @reg_w_val(%struct.gspca_dev* %185, i32 128, i32 32)
  %187 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %188 = call i32 @reg_w_val(%struct.gspca_dev* %187, i32 3, i32 1)
  %189 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %190 = call i32 @reg_w_val(%struct.gspca_dev* %189, i32 3, i32 0)
  %191 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %192 = call i32 @reg_w_val(%struct.gspca_dev* %191, i32 3, i32 8)
  %193 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %194 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %195, align 8
  %197 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %198 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = trunc i64 %199 to i32
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %38
  store i32 4, i32* %3, align 4
  br label %208

207:                                              ; preds = %38
  store i32 30, i32* %3, align 4
  br label %208

208:                                              ; preds = %207, %206
  %209 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %210 = load i32, i32* @ET_PXL_CLK, align 4
  %211 = load i32, i32* %3, align 4
  %212 = call i32 @reg_w_val(%struct.gspca_dev* %209, i32 %210, i32 %211)
  %213 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %214 = call i32 @reg_w(%struct.gspca_dev* %213, i32 98, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @Et_init2.FormLine, i64 0, i64 0), i32 6)
  %215 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %216 = call i32 @reg_w_val(%struct.gspca_dev* %215, i32 129, i32 71)
  %217 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %218 = call i32 @reg_w_val(%struct.gspca_dev* %217, i32 128, i32 64)
  %219 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %220 = call i32 @reg_w_val(%struct.gspca_dev* %219, i32 129, i32 48)
  %221 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %222 = call i32 @reg_w_val(%struct.gspca_dev* %221, i32 128, i32 32)
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @reg_w_val(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
