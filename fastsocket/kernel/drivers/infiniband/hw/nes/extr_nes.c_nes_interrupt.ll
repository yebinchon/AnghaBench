; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes.c_nes_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes.c_nes_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@NE020_REV = common dso_local global i64 0, align 8
@NES_INT_MASK = common dso_local global i64 0, align 8
@NES_INT_STAT = common dso_local global i64 0, align 8
@NES_INT_TIMER = common dso_local global i32 0, align 4
@NES_INT_INTF = common dso_local global i32 0, align 4
@NES_TIMER_STAT = common dso_local global i64 0, align 8
@NES_INTF_INT_STAT = common dso_local global i64 0, align 8
@NES_INT_PENDING = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nes_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nes_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.nes_device*
  store %struct.nes_device* %14, %struct.nes_device** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %16 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %150

20:                                               ; preds = %2
  %21 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %22 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %21, i32 0, i32 7
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NE020_REV, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %142

31:                                               ; preds = %20
  %32 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %33 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NES_INT_MASK, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @nes_read32(i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, -2147483648
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %141

41:                                               ; preds = %31
  %42 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %43 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NES_INT_STAT, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @nes_read32(i64 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %49 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %140

55:                                               ; preds = %41
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @NES_INT_TIMER, align 4
  %60 = load i32, i32* @NES_INT_INTF, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = and i32 %58, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  store i32 1, i32* %7, align 4
  br label %116

66:                                               ; preds = %55
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @NES_INT_TIMER, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @NES_INT_TIMER, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %66
  %75 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %76 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NES_TIMER_STAT, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @nes_read32(i64 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %83 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  store i32 1, i32* %7, align 4
  br label %88

88:                                               ; preds = %87, %74
  br label %89

89:                                               ; preds = %88, %66
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @NES_INT_INTF, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* @NES_INT_INTF, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %89
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %97
  %101 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %102 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @NES_INTF_INT_STAT, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @nes_read32(i64 %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %109 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %107, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  store i32 1, i32* %7, align 4
  br label %114

114:                                              ; preds = %113, %100
  br label %115

115:                                              ; preds = %114, %97, %89
  br label %116

116:                                              ; preds = %115, %65
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %116
  %120 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %121 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @NES_INT_MASK, align 8
  %124 = add nsw i64 %122, %123
  %125 = load i32, i32* %8, align 4
  %126 = and i32 %125, 2147483647
  %127 = call i32 @nes_write32(i64 %124, i32 %126)
  %128 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %129 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @NES_INT_MASK, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @nes_read32(i64 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %136 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %138 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %137, i32 0, i32 4
  store i32 1, i32* %138, align 8
  br label %139

139:                                              ; preds = %119, %116
  br label %140

140:                                              ; preds = %139, %41
  br label %141

141:                                              ; preds = %140, %31
  br label %149

142:                                              ; preds = %20
  %143 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %144 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @NES_INT_PENDING, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @nes_read32(i64 %147)
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %142, %141
  br label %150

150:                                              ; preds = %149, %19
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %150
  %154 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %155 = call i64 @nes_napi_isr(%struct.nes_device* %154)
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %159 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %158, i32 0, i32 5
  %160 = call i32 @tasklet_schedule(i32* %159)
  br label %161

161:                                              ; preds = %157, %153
  %162 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %162, i32* %3, align 4
  br label %165

163:                                              ; preds = %150
  %164 = load i32, i32* @IRQ_NONE, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %163, %161
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nes_read32(i64) #1

declare dso_local i32 @nes_write32(i64, i32) #1

declare dso_local i64 @nes_napi_isr(%struct.nes_device*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
