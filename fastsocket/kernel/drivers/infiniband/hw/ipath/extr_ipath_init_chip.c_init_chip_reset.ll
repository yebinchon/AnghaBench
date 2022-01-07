; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_init_chip.c_init_chip_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_init_chip.c_init_chip_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i64, i64, i32, i32, i64, i64, i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"tidcnt was %u before reset, now %u, using original\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"tidbase was %u before reset, now %u, using original\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"egrcnt was %u before reset, now %u, using original\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"egrbase was %u before reset, now %u, using original\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*)* @init_chip_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_chip_reset(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %6 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %7 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = shl i64 1, %8
  %10 = xor i64 %9, -1
  %11 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %12 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = and i64 %13, %10
  store i64 %14, i64* %12, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %40, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %18 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %23 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %22, i32 0, i32 12
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %29 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %28, i32 0, i32 0
  %30 = call i32 @clear_bit(i64 %27, i64* %29)
  %31 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %32 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %31, i32 0, i32 11
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %38 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %37, i32 0, i32 0
  %39 = call i32 @clear_bit(i64 %36, i64* %38)
  br label %40

40:                                               ; preds = %21
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %15

43:                                               ; preds = %15
  %44 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %45 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %46 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %45, i32 0, i32 9
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %51 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %44, i32 %49, i64 %52)
  %54 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %55 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %54, i32 0, i32 10
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %59 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %58, i32 0, i32 3
  store i32 0, i32* %59, align 4
  %60 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %61 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %62 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %61, i32 0, i32 9
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %67 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = zext i32 %68 to i64
  %70 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %60, i32 %65, i64 %69)
  %71 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %72 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %73 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %72, i32 0, i32 9
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %71, i32 %76)
  %78 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %79 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %78, i32 0, i32 10
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %83 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %84 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %83, i32 0, i32 9
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %82, i32 %87, i64 0)
  %89 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %90 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %91 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %90, i32 0, i32 9
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @ipath_read_kreg32(%struct.ipath_devdata* %89, i32 %94)
  store i64 %95, i64* %3, align 8
  %96 = load i64, i64* %3, align 8
  %97 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %98 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %96, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %43
  %102 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %103 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %102, i32 0, i32 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %107 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %3, align 8
  %110 = call i32 @dev_info(i32* %105, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %108, i64 %109)
  br label %111

111:                                              ; preds = %101, %43
  %112 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %113 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %114 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %113, i32 0, i32 9
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @ipath_read_kreg32(%struct.ipath_devdata* %112, i32 %117)
  store i64 %118, i64* %3, align 8
  %119 = load i64, i64* %3, align 8
  %120 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %121 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %119, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %111
  %125 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %126 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %125, i32 0, i32 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %130 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %3, align 8
  %133 = call i32 @dev_info(i32* %128, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %131, i64 %132)
  br label %134

134:                                              ; preds = %124, %111
  %135 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %136 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %137 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %136, i32 0, i32 9
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @ipath_read_kreg32(%struct.ipath_devdata* %135, i32 %140)
  store i64 %141, i64* %3, align 8
  %142 = load i64, i64* %3, align 8
  %143 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %144 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %142, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %134
  %148 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %149 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %148, i32 0, i32 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %153 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %3, align 8
  %156 = call i32 @dev_info(i32* %151, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %154, i64 %155)
  br label %157

157:                                              ; preds = %147, %134
  %158 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %159 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %160 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %159, i32 0, i32 9
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @ipath_read_kreg32(%struct.ipath_devdata* %158, i32 %163)
  store i64 %164, i64* %3, align 8
  %165 = load i64, i64* %3, align 8
  %166 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %167 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %166, i32 0, i32 7
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %165, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %157
  %171 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %172 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %171, i32 0, i32 8
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %176 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %175, i32 0, i32 7
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %3, align 8
  %179 = call i32 @dev_info(i32* %174, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %177, i64 %178)
  br label %180

180:                                              ; preds = %170, %157
  ret i32 0
}

declare dso_local i32 @clear_bit(i64, i64*) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipath_read_kreg64(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @ipath_read_kreg32(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
