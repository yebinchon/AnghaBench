; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_request_msix_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_request_msix_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i8*, %struct.ixgbevf_adapter**, %struct.msix_entry*, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.net_device* }
%struct.msix_entry = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.net_device = type { i8* }
%struct.ixgbevf_q_vector = type { i32, i8*, %struct.ixgbevf_q_vector**, %struct.msix_entry*, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.net_device* }

@NON_Q_VECTORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s-%s-%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TxRx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@ixgbevf_msix_clean_rings = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"request_irq failed for MSIX interrupt Error: %d\0A\00", align 1
@ixgbevf_msix_other = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"request_irq for msix_other failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_adapter*)* @ixgbevf_request_msix_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_request_msix_irqs(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ixgbevf_q_vector*, align 8
  %11 = alloca %struct.msix_entry*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  %12 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %12, i32 0, i32 7
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NON_Q_VECTORS, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %114, %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %117

24:                                               ; preds = %20
  %25 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %25, i32 0, i32 2
  %27 = load %struct.ixgbevf_adapter**, %struct.ixgbevf_adapter*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %27, i64 %29
  %31 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %30, align 8
  %32 = bitcast %struct.ixgbevf_adapter* %31 to %struct.ixgbevf_q_vector*
  store %struct.ixgbevf_q_vector* %32, %struct.ixgbevf_q_vector** %10, align 8
  %33 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %33, i32 0, i32 3
  %35 = load %struct.msix_entry*, %struct.msix_entry** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %35, i64 %37
  store %struct.msix_entry* %38, %struct.msix_entry** %11, align 8
  %39 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %10, align 8
  %40 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %24
  %45 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %10, align 8
  %46 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %10, align 8
  %52 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  %59 = call i32 @snprintf(i8* %53, i32 7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %97

62:                                               ; preds = %44, %24
  %63 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %10, align 8
  %64 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %10, align 8
  %70 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  %77 = call i32 @snprintf(i8* %71, i32 7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %96

78:                                               ; preds = %62
  %79 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %10, align 8
  %80 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %10, align 8
  %86 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  %93 = call i32 @snprintf(i8* %87, i32 7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %95

94:                                               ; preds = %78
  br label %114

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %68
  br label %97

97:                                               ; preds = %96, %50
  %98 = load %struct.msix_entry*, %struct.msix_entry** %11, align 8
  %99 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %10, align 8
  %102 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %10, align 8
  %105 = call i32 @request_irq(i32 %100, i32* @ixgbevf_msix_clean_rings, i32 0, i8* %103, %struct.ixgbevf_q_vector* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %97
  %109 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %109, i32 0, i32 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @hw_dbg(i32* %110, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  br label %140

113:                                              ; preds = %97
  br label %114

114:                                              ; preds = %113, %94
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %20

117:                                              ; preds = %20
  %118 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %119 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %118, i32 0, i32 3
  %120 = load %struct.msix_entry*, %struct.msix_entry** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %120, i64 %122
  %124 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.net_device*, %struct.net_device** %4, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %130 = bitcast %struct.ixgbevf_adapter* %129 to %struct.ixgbevf_q_vector*
  %131 = call i32 @request_irq(i32 %125, i32* @ixgbevf_msix_other, i32 0, i8* %128, %struct.ixgbevf_q_vector* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %117
  %135 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %136 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %135, i32 0, i32 4
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @hw_dbg(i32* %136, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %137)
  br label %140

139:                                              ; preds = %117
  store i32 0, i32* %2, align 4
  br label %168

140:                                              ; preds = %134, %108
  br label %141

141:                                              ; preds = %144, %140
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %164

144:                                              ; preds = %141
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %6, align 4
  %147 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %148 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %147, i32 0, i32 3
  %149 = load %struct.msix_entry*, %struct.msix_entry** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %149, i64 %151
  %153 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %156 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %155, i32 0, i32 2
  %157 = load %struct.ixgbevf_adapter**, %struct.ixgbevf_adapter*** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %157, i64 %159
  %161 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %160, align 8
  %162 = bitcast %struct.ixgbevf_adapter* %161 to %struct.ixgbevf_q_vector*
  %163 = call i32 @free_irq(i32 %154, %struct.ixgbevf_q_vector* %162)
  br label %141

164:                                              ; preds = %141
  %165 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %166 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %165, i32 0, i32 0
  store i32 0, i32* %166, align 8
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %164, %139
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i8*, %struct.ixgbevf_q_vector*) #1

declare dso_local i32 @hw_dbg(i32*, i8*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.ixgbevf_q_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
