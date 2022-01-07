; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_b3dfg_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_b3dfg_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b3dfg_dev = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@B3D_REG_DMA_STS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ignore interrupt, DMA status is 0\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"ignore interrupt, TX disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"intr: DMA_STS=%08x (drop=%d comp=%d next=%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"buffer not ready for next transfer\0A\00", align 1
@B3D_REG_EC220_DMA_STS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"EC220 error: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"completed but no last idx?\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"acknowledging interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @b3dfg_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b3dfg_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.b3dfg_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.b3dfg_dev*
  store %struct.b3dfg_dev* %13, %struct.b3dfg_dev** %5, align 8
  %14 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %15 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %14, i32 0, i32 7
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %6, align 8
  store i32 1, i32* %9, align 4
  %18 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %20 = load i32, i32* @B3D_REG_DMA_STS, align 4
  %21 = call i32 @b3dfg_read32(%struct.b3dfg_dev* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = call i32 @dev_warn(%struct.device* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %10, align 4
  br label %145

31:                                               ; preds = %2
  %32 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %33 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call i32 @dev_warn(%struct.device* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %43, i32* %10, align 4
  br label %145

44:                                               ; preds = %31
  %45 = load i32, i32* %7, align 4
  %46 = ashr i32 %45, 8
  %47 = and i32 %46, 255
  store i32 %47, i32* %8, align 4
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 3
  %59 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %50, i32 %56, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %44
  %66 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %67 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %66, i32 0, i32 5
  %68 = call i32 @spin_lock(i32* %67)
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %71 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %75 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %74, i32 0, i32 5
  %76 = call i32 @spin_unlock(i32* %75)
  br label %77

77:                                               ; preds = %65, %44
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %83 = call i32 @handle_cstate_change(%struct.b3dfg_dev* %82)
  br label %145

84:                                               ; preds = %77
  %85 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %86 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %85, i32 0, i32 3
  %87 = call i32 @spin_lock(i32* %86)
  %88 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %89 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %88, i32 0, i32 4
  %90 = call i32 @list_empty(i32* %89)
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %84
  %94 = load %struct.device*, %struct.device** %6, align 8
  %95 = call i32 @dev_info(%struct.device* %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %96 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %97 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  br label %141

98:                                               ; preds = %84
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %128

102:                                              ; preds = %98
  %103 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %104 = load i32, i32* @B3D_REG_EC220_DMA_STS, align 4
  %105 = call i32 @b3dfg_read32(%struct.b3dfg_dev* %103, i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = and i32 %106, 1
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = load %struct.device*, %struct.device** %6, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  br label %141

114:                                              ; preds = %102
  %115 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %116 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, -1
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load %struct.device*, %struct.device** %6, align 8
  %124 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %123, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %141

125:                                              ; preds = %114
  %126 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %127 = call i32 @transfer_complete(%struct.b3dfg_dev* %126)
  br label %128

128:                                              ; preds = %125, %98
  %129 = load i32, i32* %7, align 4
  %130 = and i32 %129, 3
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %134 = load i32, i32* %7, align 4
  %135 = and i32 %134, 3
  %136 = call i32 @setup_next_frame_transfer(%struct.b3dfg_dev* %133, i32 %135)
  store i32 %136, i32* %9, align 4
  br label %140

137:                                              ; preds = %128
  %138 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %139 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %138, i32 0, i32 2
  store i32 -1, i32* %139, align 8
  br label %140

140:                                              ; preds = %137, %132
  br label %141

141:                                              ; preds = %140, %122, %110, %93
  %142 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %143 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %142, i32 0, i32 3
  %144 = call i32 @spin_unlock(i32* %143)
  br label %145

145:                                              ; preds = %141, %81, %40, %27
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load %struct.device*, %struct.device** %6, align 8
  %150 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %149, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %151 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %152 = load i32, i32* @B3D_REG_EC220_DMA_STS, align 4
  %153 = call i32 @b3dfg_write32(%struct.b3dfg_dev* %151, i32 %152, i32 11)
  br label %154

154:                                              ; preds = %148, %145
  %155 = load i32, i32* %10, align 4
  ret i32 %155
}

declare dso_local i32 @b3dfg_read32(%struct.b3dfg_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @handle_cstate_change(%struct.b3dfg_dev*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @transfer_complete(%struct.b3dfg_dev*) #1

declare dso_local i32 @setup_next_frame_transfer(%struct.b3dfg_dev*, i32) #1

declare dso_local i32 @b3dfg_write32(%struct.b3dfg_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
