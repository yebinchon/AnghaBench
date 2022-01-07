; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_request_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i32, i32, i32, %struct.myri10ge_slice_state*, %struct.net_device*, %struct.TYPE_2__*, %struct.pci_dev* }
%struct.myri10ge_slice_state = type { i8* }
%struct.net_device = type { i8* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32, i32 }

@myri10ge_msi = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Error %d setting up MSI-X\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Error %d setting up MSI; falling back to xPIC\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s:slice-%d\00", align 1
@myri10ge_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"slice %d failed to allocate IRQ\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to allocate IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.myri10ge_priv*)* @myri10ge_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_request_irq(%struct.myri10ge_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.myri10ge_priv*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.myri10ge_slice_state*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %3, align 8
  %9 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %10 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %9, i32 0, i32 6
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %13 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %12, i32 0, i32 4
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  %15 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %16 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %18 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  store i32 0, i32* %8, align 4
  %19 = load i64, i64* @myri10ge_msi, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %67

21:                                               ; preds = %1
  %22 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %23 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %29 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %28, i32 0, i32 5
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %32 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pci_enable_msix(%struct.pci_dev* %27, %struct.TYPE_2__* %30, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %39 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  br label %46

40:                                               ; preds = %26
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %8, align 4
  %44 = call i32 (i32*, i8*, ...) @dev_err(i32* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %180

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %21
  %48 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %49 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = call i32 @pci_enable_msi(%struct.pci_dev* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %65

62:                                               ; preds = %52
  %63 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %64 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %57
  br label %66

66:                                               ; preds = %65, %47
  br label %67

67:                                               ; preds = %66, %1
  %68 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %69 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %147

72:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %143, %72
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %76 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %146

79:                                               ; preds = %73
  %80 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %81 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %80, i32 0, i32 3
  %82 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %82, i64 %84
  store %struct.myri10ge_slice_state* %85, %struct.myri10ge_slice_state** %5, align 8
  %86 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %5, align 8
  %87 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.net_device*, %struct.net_device** %6, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @snprintf(i8* %88, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %91, i32 %92)
  %94 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %95 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %94, i32 0, i32 5
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @myri10ge_intr, align 4
  %103 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %5, align 8
  %104 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %5, align 8
  %107 = call i32 @request_irq(i32 %101, i32 %102, i32 0, i8* %105, %struct.myri10ge_slice_state* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %142

110:                                              ; preds = %79
  %111 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %7, align 4
  %114 = call i32 (i32*, i8*, ...) @dev_err(i32* %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %120, %110
  %118 = load i32, i32* %7, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %117
  %121 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %122 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %121, i32 0, i32 5
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %130 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %129, i32 0, i32 3
  %131 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %131, i64 %133
  %135 = call i32 @free_irq(i32 %128, %struct.myri10ge_slice_state* %134)
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %7, align 4
  br label %117

138:                                              ; preds = %117
  %139 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %140 = call i32 @pci_disable_msix(%struct.pci_dev* %139)
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %2, align 4
  br label %180

142:                                              ; preds = %79
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %73

146:                                              ; preds = %73
  br label %178

147:                                              ; preds = %67
  %148 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %149 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @myri10ge_intr, align 4
  %152 = load i32, i32* @IRQF_SHARED, align 4
  %153 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %154 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %153, i32 0, i32 4
  %155 = load %struct.net_device*, %struct.net_device** %154, align 8
  %156 = getelementptr inbounds %struct.net_device, %struct.net_device* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %159 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %158, i32 0, i32 3
  %160 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %159, align 8
  %161 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %160, i64 0
  %162 = call i32 @request_irq(i32 %150, i32 %151, i32 %152, i8* %157, %struct.myri10ge_slice_state* %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %177

165:                                              ; preds = %147
  %166 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %167 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %166, i32 0, i32 0
  %168 = call i32 (i32*, i8*, ...) @dev_err(i32* %167, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %169 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %170 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %165
  %174 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %175 = call i32 @pci_disable_msi(%struct.pci_dev* %174)
  br label %176

176:                                              ; preds = %173, %165
  br label %177

177:                                              ; preds = %176, %147
  br label %178

178:                                              ; preds = %177, %146
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %178, %138, %40
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @pci_enable_msix(%struct.pci_dev*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.myri10ge_slice_state*) #1

declare dso_local i32 @free_irq(i32, %struct.myri10ge_slice_state*) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
