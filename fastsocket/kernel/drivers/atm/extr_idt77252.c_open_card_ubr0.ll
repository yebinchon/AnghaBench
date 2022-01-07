; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_open_card_ubr0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_open_card_ubr0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i64, %struct.vc_map**, i32, %struct.vc_map** }
%struct.vc_map = type { i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: can't alloc vc\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SCHED_UBR0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: can't get SCQ.\0A\00", align 1
@TCT_UBR = common dso_local global i32 0, align 4
@TCT_FLAG_UBR = common dso_local global i32 0, align 4
@VCF_IDLE = common dso_local global i32 0, align 4
@TCMDQ_START = common dso_local global i32 0, align 4
@SAR_REG_TCMDQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*)* @open_card_ubr0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_card_ubr0(%struct.idt77252_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.idt77252_dev*, align 8
  %4 = alloca %struct.vc_map*, align 8
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.vc_map* @kzalloc(i32 24, i32 %5)
  store %struct.vc_map* %6, %struct.vc_map** %4, align 8
  %7 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %8 = icmp ne %struct.vc_map* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %11 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %127

16:                                               ; preds = %1
  %17 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %18 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %19 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %18, i32 0, i32 4
  %20 = load %struct.vc_map**, %struct.vc_map*** %19, align 8
  %21 = getelementptr inbounds %struct.vc_map*, %struct.vc_map** %20, i64 0
  store %struct.vc_map* %17, %struct.vc_map** %21, align 8
  %22 = load i32, i32* @SCHED_UBR0, align 4
  %23 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %24 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %26 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %27 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_3__* @alloc_scq(%struct.idt77252_dev* %25, i32 %28)
  %30 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %31 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %30, i32 0, i32 2
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %31, align 8
  %32 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %33 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %16
  %37 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %38 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %127

43:                                               ; preds = %16
  %44 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %45 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %46 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %45, i32 0, i32 2
  %47 = load %struct.vc_map**, %struct.vc_map*** %46, align 8
  %48 = getelementptr inbounds %struct.vc_map*, %struct.vc_map** %47, i64 0
  store %struct.vc_map* %44, %struct.vc_map** %48, align 8
  %49 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %50 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %52 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %55 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %59 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %60 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %63 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @fill_scd(%struct.idt77252_dev* %58, %struct.TYPE_3__* %61, i32 %64)
  %66 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %67 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %68 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 0
  %71 = load i32, i32* @TCT_UBR, align 4
  %72 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %73 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %71, %74
  %76 = call i32 @write_sram(%struct.idt77252_dev* %66, i64 %70, i32 %75)
  %77 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %78 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %79 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  %82 = call i32 @write_sram(%struct.idt77252_dev* %77, i64 %81, i32 0)
  %83 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %84 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %85 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 2
  %88 = call i32 @write_sram(%struct.idt77252_dev* %83, i64 %87, i32 0)
  %89 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %90 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %91 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 3
  %94 = call i32 @write_sram(%struct.idt77252_dev* %89, i64 %93, i32 0)
  %95 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %96 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %97 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 4
  %100 = call i32 @write_sram(%struct.idt77252_dev* %95, i64 %99, i32 0)
  %101 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %102 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %103 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 5
  %106 = call i32 @write_sram(%struct.idt77252_dev* %101, i64 %105, i32 0)
  %107 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %108 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %109 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 6
  %112 = call i32 @write_sram(%struct.idt77252_dev* %107, i64 %111, i32 0)
  %113 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %114 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %115 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, 7
  %118 = load i32, i32* @TCT_FLAG_UBR, align 4
  %119 = call i32 @write_sram(%struct.idt77252_dev* %113, i64 %117, i32 %118)
  %120 = load i32, i32* @VCF_IDLE, align 4
  %121 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %122 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %121, i32 0, i32 0
  %123 = call i32 @clear_bit(i32 %120, i32* %122)
  %124 = load i32, i32* @TCMDQ_START, align 4
  %125 = load i32, i32* @SAR_REG_TCMDQ, align 4
  %126 = call i32 @writel(i32 %124, i32 %125)
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %43, %36, %9
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.vc_map* @kzalloc(i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local %struct.TYPE_3__* @alloc_scq(%struct.idt77252_dev*, i32) #1

declare dso_local i32 @fill_scd(%struct.idt77252_dev*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @write_sram(%struct.idt77252_dev*, i64, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
