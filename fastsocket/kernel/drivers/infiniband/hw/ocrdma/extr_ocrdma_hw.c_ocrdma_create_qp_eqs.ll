; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_create_qp_eqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_create_qp_eqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@BE_INTERRUPT_MODE_INTX = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i64 0, align 8
@u32 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_EQ_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ocrdma_qp%d-%d\00", align 1
@ocrdma_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*)* @ocrdma_create_qp_eqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_create_qp_eqs(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %10 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %15 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %13, %18
  store i32 %19, i32* %4, align 4
  %20 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %21 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BE_INTERRUPT_MODE_INTX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  %27 = load i64, i64* @IRQF_SHARED, align 8
  store i64 %27, i64* %8, align 8
  br label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @u32, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (...) @num_online_cpus()
  %32 = call i32 @min_t(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %26
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 4, %35
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.TYPE_10__* @kzalloc(i32 %37, i32 %38)
  %40 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %41 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %40, i32 0, i32 2
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %41, align 8
  %42 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %43 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %42, i32 0, i32 2
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %33
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %144

49:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %127, %49
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %130

54:                                               ; preds = %50
  %55 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %56 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %57 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %56, i32 0, i32 2
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 %60
  %62 = load i32, i32* @OCRDMA_EQ_LEN, align 4
  %63 = call i32 @ocrdma_create_eq(%struct.ocrdma_dev* %55, %struct.TYPE_10__* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %130

69:                                               ; preds = %54
  %70 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %71 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %70, i32 0, i32 2
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %79 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @sprintf(i32 %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %84 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %85 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %84, i32 0, i32 2
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 %88
  %90 = call i32 @ocrdma_get_irq(%struct.ocrdma_dev* %83, %struct.TYPE_10__* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @ocrdma_irq_handler, align 4
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %95 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %94, i32 0, i32 2
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %103 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %102, i32 0, i32 2
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 %106
  %108 = call i32 @request_irq(i32 %91, i32 %92, i64 %93, i32 %101, %struct.TYPE_10__* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %69
  %112 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %113 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %114 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %113, i32 0, i32 2
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i64 %117
  %119 = call i32 @_ocrdma_destroy_eq(%struct.ocrdma_dev* %112, %struct.TYPE_10__* %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  br label %130

122:                                              ; preds = %69
  %123 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %124 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %122
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %50

130:                                              ; preds = %111, %66, %50
  %131 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %132 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp sge i32 %133, 1
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i32 0, i32* %2, align 4
  br label %144

136:                                              ; preds = %130
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %141 = call i32 @ocrdma_destroy_qp_eqs(%struct.ocrdma_dev* %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %142, %135, %46
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local %struct.TYPE_10__* @kzalloc(i32, i32) #1

declare dso_local i32 @ocrdma_create_eq(%struct.ocrdma_dev*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @ocrdma_get_irq(%struct.ocrdma_dev*, %struct.TYPE_10__*) #1

declare dso_local i32 @request_irq(i32, i32, i64, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @_ocrdma_destroy_eq(%struct.ocrdma_dev*, %struct.TYPE_10__*) #1

declare dso_local i32 @ocrdma_destroy_qp_eqs(%struct.ocrdma_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
