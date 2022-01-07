; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_read_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_read_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"No ACK after %d msec -GPIO I2C failed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_gpio_i2c_read_ack(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  store i32 0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  store i32 10, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %9 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 1, %11
  %13 = xor i32 %12, -1
  %14 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %15 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %19 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 1, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %29 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %4, align 8
  %33 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %34 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %35 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %38 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %37, i32 0, i32 1
  %39 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %33, i32 %36, i32* %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %65, %1
  %41 = call i32 @msleep(i32 2)
  %42 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %43 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %44 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %47 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %46, i32 0, i32 1
  %48 = call i32 @cx231xx_get_gpio_bit(%struct.cx231xx* %42, i32 %45, i32* %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %40
  %52 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %53 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %56 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %54, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i32, i32* %5, align 4
  %64 = icmp sgt i32 %63, 0
  br label %65

65:                                               ; preds = %62, %51
  %66 = phi i1 [ false, %51 ], [ %64, %62 ]
  br i1 %66, label %40, label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 %71, 10
  %73 = call i32 @cx231xx_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %67
  %75 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %76 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %77 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %80 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %79, i32 0, i32 1
  %81 = call i32 @cx231xx_get_gpio_bit(%struct.cx231xx* %75, i32 %78, i32* %80)
  store i32 %81, i32* %3, align 4
  %82 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %83 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %86 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 1, %88
  %90 = and i32 %84, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %74
  %93 = load i8*, i8** %4, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %96 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %98 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 1, %100
  %102 = xor i32 %101, -1
  %103 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %104 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 4
  store i32 0, i32* %3, align 4
  br label %121

107:                                              ; preds = %74
  %108 = load i8*, i8** %4, align 8
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %111 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %113 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 1, %115
  %117 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %118 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %107, %92
  %122 = load i8*, i8** %4, align 8
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %125 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %127 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 1, %129
  %131 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %132 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %136 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 1, %138
  %140 = xor i32 %139, -1
  %141 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %142 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, %140
  store i32 %144, i32* %142, align 4
  %145 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %146 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %147 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %150 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %149, i32 0, i32 1
  %151 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %145, i32 %148, i32* %150)
  store i32 %151, i32* %3, align 4
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @cx231xx_set_gpio_bit(%struct.cx231xx*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cx231xx_get_gpio_bit(%struct.cx231xx*, i32, i32*) #1

declare dso_local i32 @cx231xx_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
