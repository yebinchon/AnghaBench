; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qsfp.c_qsfp_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qsfp.c_qsfp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, i64, %struct.qib_devdata* }
%struct.qib_devdata = type { i64, i32, i32 (%struct.qib_devdata*, i32, i32, i32)* }

@QIB_TWSI_NO_DEV = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@QSFP_GPIO_MOD_SEL_N = common dso_local global i32 0, align 4
@QSFP_GPIO_MOD_RST_N = common dso_local global i32 0, align 4
@QSFP_GPIO_LP_MODE = common dso_local global i32 0, align 4
@QSFP_GPIO_PORT2_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"QSFP interface Reset for read failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@QSFP_PAGESIZE = common dso_local global i32 0, align 4
@QSFP_DEV = common dso_local global i32 0, align 4
@QSFP_MAX_RETRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"QSFP interface bus stuck non-idle\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"QSFP failed even retrying\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"QSFP retries: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_pportdata*, i32, i8*, i32)* @qsfp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsfp_read(%struct.qib_pportdata* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.qib_pportdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qib_devdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %20 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %19, i32 0, i32 2
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %20, align 8
  store %struct.qib_devdata* %21, %struct.qib_devdata** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %16, align 8
  %24 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %25 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock_interruptible(i32* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %183

30:                                               ; preds = %4
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %32 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @QIB_TWSI_NO_DEV, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @ENXIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %12, align 4
  br label %179

39:                                               ; preds = %30
  %40 = load i32, i32* @QSFP_GPIO_MOD_SEL_N, align 4
  %41 = load i32, i32* @QSFP_GPIO_MOD_RST_N, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @QSFP_GPIO_LP_MODE, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* @QSFP_GPIO_MOD_RST_N, align 4
  %46 = load i32, i32* @QSFP_GPIO_LP_MODE, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %49 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %39
  %53 = load i32, i32* @QSFP_GPIO_PORT2_SHIFT, align 4
  %54 = load i32, i32* %11, align 4
  %55 = shl i32 %54, %53
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* @QSFP_GPIO_PORT2_SHIFT, align 4
  %57 = load i32, i32* %10, align 4
  %58 = shl i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %52, %39
  %60 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %61 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %60, i32 0, i32 2
  %62 = load i32 (%struct.qib_devdata*, i32, i32, i32)*, i32 (%struct.qib_devdata*, i32, i32, i32)** %61, align 8
  %63 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 %62(%struct.qib_devdata* %63, i32 %64, i32 %65, i32 %66)
  %68 = call i32 @msleep(i32 2)
  %69 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %70 = call i32 @qib_twsi_reset(%struct.qib_devdata* %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %59
  %74 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %75 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %76 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (%struct.qib_devdata*, i32, i8*, ...) @qib_dev_porterr(%struct.qib_devdata* %74, i32 %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %12, align 4
  store i32 1, i32* %15, align 4
  br label %138

81:                                               ; preds = %59
  store i32 0, i32* %13, align 4
  br label %82

82:                                               ; preds = %129, %122, %81
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %136

86:                                               ; preds = %82
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %13, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @QSFP_PAGESIZE, align 4
  %92 = srem i32 %90, %91
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %18, align 4
  %95 = add i32 %93, %94
  %96 = load i32, i32* @QSFP_PAGESIZE, align 4
  %97 = icmp ugt i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %86
  %99 = load i32, i32* @QSFP_PAGESIZE, align 4
  %100 = load i32, i32* %17, align 4
  %101 = sub i32 %99, %100
  store i32 %101, i32* %18, align 4
  br label %102

102:                                              ; preds = %98, %86
  %103 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %104 = load i32, i32* @QSFP_DEV, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32*, i32** %16, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %18, align 4
  %111 = call i32 @qib_twsi_blk_rd(%struct.qib_devdata* %103, i32 %104, i32 %105, i32* %109, i32 %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %102
  %115 = load i32, i32* %13, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* @QSFP_MAX_RETRY, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %82

123:                                              ; preds = %117, %114, %102
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %12, align 4
  br label %138

129:                                              ; preds = %123
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %13, align 4
  br label %82

136:                                              ; preds = %82
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %136, %126, %73
  %139 = call i32 @udelay(i32 10)
  %140 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %141 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %140, i32 0, i32 2
  %142 = load i32 (%struct.qib_devdata*, i32, i32, i32)*, i32 (%struct.qib_devdata*, i32, i32, i32)** %141, align 8
  %143 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = call i32 %142(%struct.qib_devdata* %143, i32 %144, i32 %145, i32 %146)
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %138
  %151 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %152 = call i32 @qib_dev_err(%struct.qib_devdata* %151, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150, %138
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @QSFP_MAX_RETRY, align 4
  %156 = icmp sge i32 %154, %155
  br i1 %156, label %157, label %166

157:                                              ; preds = %153
  %158 = load i32, i32* %12, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %162 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %163 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 (%struct.qib_devdata*, i32, i8*, ...) @qib_dev_porterr(%struct.qib_devdata* %161, i32 %164, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %177

166:                                              ; preds = %157, %153
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %171 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %172 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %14, align 4
  %175 = call i32 (%struct.qib_devdata*, i32, i8*, ...) @qib_dev_porterr(%struct.qib_devdata* %170, i32 %173, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %169, %166
  br label %177

177:                                              ; preds = %176, %160
  %178 = call i32 @msleep(i32 2)
  br label %179

179:                                              ; preds = %177, %36
  %180 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %181 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %180, i32 0, i32 1
  %182 = call i32 @mutex_unlock(i32* %181)
  br label %183

183:                                              ; preds = %179, %29
  %184 = load i32, i32* %12, align 4
  ret i32 %184
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qib_twsi_reset(%struct.qib_devdata*) #1

declare dso_local i32 @qib_dev_porterr(%struct.qib_devdata*, i32, i8*, ...) #1

declare dso_local i32 @qib_twsi_blk_rd(%struct.qib_devdata*, i32, i32, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
