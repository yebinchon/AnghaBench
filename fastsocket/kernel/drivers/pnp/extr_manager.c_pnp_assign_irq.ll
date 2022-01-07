; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_manager.c_pnp_assign_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_manager.c_pnp_assign_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.pnp_irq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32, i32, i32 }

@pnp_assign_irq.xtab = internal global [16 x i16] [i16 5, i16 10, i16 11, i16 12, i16 9, i16 14, i16 15, i16 7, i16 3, i16 4, i16 13, i16 0, i16 1, i16 6, i16 8, i16 2], align 16
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"  irq %d already set to %d flags %#lx\0A\00", align 1
@IORESOURCE_AUTO = common dso_local global i32 0, align 4
@PNP_IRQ_NR = common dso_local global i32 0, align 4
@IORESOURCE_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"  irq %d disabled\0A\00", align 1
@IORESOURCE_IRQ_OPTIONAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"  irq %d disabled (optional)\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"  couldn't assign irq %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, %struct.pnp_irq*, i32)* @pnp_assign_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnp_assign_irq(%struct.pnp_dev* %0, %struct.pnp_irq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnp_dev*, align 8
  %6 = alloca %struct.pnp_irq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.resource, align 4
  %10 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %5, align 8
  store %struct.pnp_irq* %1, %struct.pnp_irq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %12 = load i32, i32* @IORESOURCE_IRQ, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %11, i32 %12, i32 %13)
  store %struct.resource* %14, %struct.resource** %8, align 8
  %15 = load %struct.resource*, %struct.resource** %8, align 8
  %16 = icmp ne %struct.resource* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %19 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.resource*, %struct.resource** %8, align 8
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.resource*, %struct.resource** %8, align 8
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26)
  store i32 0, i32* %4, align 4
  br label %149

28:                                               ; preds = %3
  store %struct.resource* %9, %struct.resource** %8, align 8
  %29 = load %struct.pnp_irq*, %struct.pnp_irq** %6, align 8
  %30 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IORESOURCE_AUTO, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.resource*, %struct.resource** %8, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.resource*, %struct.resource** %8, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 4
  %38 = load %struct.resource*, %struct.resource** %8, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 2
  store i32 -1, i32* %39, align 4
  %40 = load %struct.pnp_irq*, %struct.pnp_irq** %6, align 8
  %41 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PNP_IRQ_NR, align 4
  %45 = call i64 @bitmap_empty(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %28
  %48 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %49 = load %struct.resource*, %struct.resource** %8, align 8
  %50 = getelementptr inbounds %struct.resource, %struct.resource* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %54 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %140

57:                                               ; preds = %28
  %58 = load %struct.pnp_irq*, %struct.pnp_irq** %6, align 8
  %59 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PNP_IRQ_NR, align 4
  %63 = call i32 @find_next_bit(i32 %61, i32 %62, i32 16)
  %64 = load %struct.resource*, %struct.resource** %8, align 8
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.resource*, %struct.resource** %8, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PNP_IRQ_NR, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %57
  %72 = load %struct.resource*, %struct.resource** %8, align 8
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.resource*, %struct.resource** %8, align 8
  %76 = getelementptr inbounds %struct.resource, %struct.resource* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  br label %140

77:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %109, %77
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 16
  br i1 %80, label %81, label %112

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [16 x i16], [16 x i16]* @pnp_assign_irq.xtab, i64 0, i64 %83
  %85 = load i16, i16* %84, align 2
  %86 = load %struct.pnp_irq*, %struct.pnp_irq** %6, align 8
  %87 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @test_bit(i16 zeroext %85, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %81
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [16 x i16], [16 x i16]* @pnp_assign_irq.xtab, i64 0, i64 %94
  %96 = load i16, i16* %95, align 2
  %97 = zext i16 %96 to i32
  %98 = load %struct.resource*, %struct.resource** %8, align 8
  %99 = getelementptr inbounds %struct.resource, %struct.resource* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.resource*, %struct.resource** %8, align 8
  %101 = getelementptr inbounds %struct.resource, %struct.resource* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 4
  %102 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %103 = load %struct.resource*, %struct.resource** %8, align 8
  %104 = call i64 @pnp_check_irq(%struct.pnp_dev* %102, %struct.resource* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  br label %140

107:                                              ; preds = %92
  br label %108

108:                                              ; preds = %107, %81
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %78

112:                                              ; preds = %78
  %113 = load %struct.pnp_irq*, %struct.pnp_irq** %6, align 8
  %114 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IORESOURCE_IRQ_OPTIONAL, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %112
  %120 = load %struct.resource*, %struct.resource** %8, align 8
  %121 = getelementptr inbounds %struct.resource, %struct.resource* %120, i32 0, i32 0
  store i32 -1, i32* %121, align 4
  %122 = load %struct.resource*, %struct.resource** %8, align 8
  %123 = getelementptr inbounds %struct.resource, %struct.resource* %122, i32 0, i32 2
  store i32 -1, i32* %123, align 4
  %124 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %125 = load %struct.resource*, %struct.resource** %8, align 8
  %126 = getelementptr inbounds %struct.resource, %struct.resource* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %130 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %129, i32 0, i32 0
  %131 = load i32, i32* %7, align 4
  %132 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  br label %140

133:                                              ; preds = %112
  %134 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %135 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %134, i32 0, i32 0
  %136 = load i32, i32* %7, align 4
  %137 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %135, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @EBUSY, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %4, align 4
  br label %149

140:                                              ; preds = %119, %106, %71, %47
  %141 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %142 = load %struct.resource*, %struct.resource** %8, align 8
  %143 = getelementptr inbounds %struct.resource, %struct.resource* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.resource*, %struct.resource** %8, align 8
  %146 = getelementptr inbounds %struct.resource, %struct.resource* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @pnp_add_irq_resource(%struct.pnp_dev* %141, i32 %144, i32 %147)
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %140, %133, %17
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.resource* @pnp_get_resource(%struct.pnp_dev*, i32, i32) #1

declare dso_local i32 @pnp_dbg(i32*, i8*, i32, ...) #1

declare dso_local i64 @bitmap_empty(i32, i32) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i64 @test_bit(i16 zeroext, i32) #1

declare dso_local i64 @pnp_check_irq(%struct.pnp_dev*, %struct.resource*) #1

declare dso_local i32 @pnp_add_irq_resource(%struct.pnp_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
