; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_msi.c_fsl_msi_cascade.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_msi.c_fsl_msi_cascade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_msi = type { i32, i32, i32 }
%struct.irq_desc = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)*, i32 (i32)*, i32 (i32)*, i32 (i32)* }

@fsl_msi = common dso_local global %struct.fsl_msi* null, align 8
@FSL_PIC_IP_MASK = common dso_local global i32 0, align 4
@IRQ_INPROGRESS = common dso_local global i32 0, align 4
@NR_MSI_REG = common dso_local global i32 0, align 4
@NO_IRQ = common dso_local global i32 0, align 4
@IRQS_PER_MSI_REG = common dso_local global i32 0, align 4
@IRQ_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @fsl_msi_cascade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_msi_cascade(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_msi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %11 = load %struct.fsl_msi*, %struct.fsl_msi** @fsl_msi, align 8
  store %struct.fsl_msi* %11, %struct.fsl_msi** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %13 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.fsl_msi*, %struct.fsl_msi** %6, align 8
  %16 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FSL_PIC_IP_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 129
  br i1 %20, label %21, label %52

21:                                               ; preds = %2
  %22 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %23 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = load i32 (i32)*, i32 (i32)** %25, align 8
  %27 = icmp ne i32 (i32)* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %30 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  %33 = load i32 (i32)*, i32 (i32)** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 %33(i32 %34)
  br label %51

36:                                               ; preds = %21
  %37 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %38 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32 (i32)*, i32 (i32)** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 %41(i32 %42)
  %44 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %45 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 %48(i32 %49)
  br label %51

51:                                               ; preds = %36, %28
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %54 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IRQ_INPROGRESS, align 4
  %57 = and i32 %55, %56
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %174

61:                                               ; preds = %52
  %62 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %63 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @NR_MSI_REG, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @NO_IRQ, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %69, %61
  %72 = load i32, i32* @IRQ_INPROGRESS, align 4
  %73 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %74 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.fsl_msi*, %struct.fsl_msi** @fsl_msi, align 8
  %78 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @FSL_PIC_IP_MASK, align 4
  %81 = and i32 %79, %80
  switch i32 %81, label %96 [
    i32 128, label %82
    i32 129, label %89
  ]

82:                                               ; preds = %71
  %83 = load %struct.fsl_msi*, %struct.fsl_msi** %6, align 8
  %84 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %7, align 4
  %87 = mul nsw i32 %86, 16
  %88 = call i32 @fsl_msi_read(i32 %85, i32 %87)
  store i32 %88, i32* %8, align 4
  br label %96

89:                                               ; preds = %71
  %90 = load %struct.fsl_msi*, %struct.fsl_msi** %6, align 8
  %91 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = mul nsw i32 %93, 4
  %95 = call i32 @fsl_msi_read(i32 %92, i32 %94)
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %71, %89, %82
  br label %97

97:                                               ; preds = %121, %96
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %130

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @ffs(i32 %101)
  %103 = sub nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  %104 = load %struct.fsl_msi*, %struct.fsl_msi** %6, align 8
  %105 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @IRQS_PER_MSI_REG, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %111, %112
  %114 = call i32 @irq_linear_revmap(i32 %106, i32 %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @NO_IRQ, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %100
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @generic_handle_irq(i32 %119)
  br label %121

121:                                              ; preds = %118, %100
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  %129 = ashr i32 %126, %128
  store i32 %129, i32* %8, align 4
  br label %97

130:                                              ; preds = %97
  %131 = load i32, i32* @IRQ_INPROGRESS, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %134 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.fsl_msi*, %struct.fsl_msi** %6, align 8
  %138 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @FSL_PIC_IP_MASK, align 4
  %141 = and i32 %139, %140
  switch i32 %141, label %173 [
    i32 128, label %142
    i32 129, label %150
  ]

142:                                              ; preds = %130
  %143 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %144 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %143, i32 0, i32 2
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i32 (i32)*, i32 (i32)** %146, align 8
  %148 = load i32, i32* %3, align 4
  %149 = call i32 %147(i32 %148)
  br label %173

150:                                              ; preds = %130
  %151 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %152 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @IRQ_DISABLED, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %172, label %157

157:                                              ; preds = %150
  %158 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %159 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %158, i32 0, i32 2
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32 (i32)*, i32 (i32)** %161, align 8
  %163 = icmp ne i32 (i32)* %162, null
  br i1 %163, label %164, label %172

164:                                              ; preds = %157
  %165 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %166 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %165, i32 0, i32 2
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32 (i32)*, i32 (i32)** %168, align 8
  %170 = load i32, i32* %3, align 4
  %171 = call i32 %169(i32 %170)
  br label %172

172:                                              ; preds = %164, %157, %150
  br label %173

173:                                              ; preds = %130, %172, %142
  br label %174

174:                                              ; preds = %173, %60
  %175 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %176 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %175, i32 0, i32 1
  %177 = call i32 @spin_unlock(i32* %176)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fsl_msi_read(i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
