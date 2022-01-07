; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_next_iotag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_next_iotag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.lpfc_sli }
%struct.lpfc_sli = type { i64, i64, %struct.lpfc_iocbq** }
%struct.lpfc_iocbq = type { i64 }

@LPFC_IOCBQ_LOOKUP_INCREMENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"0318 Failed to allocate IOTAG.last IOTAG is %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lpfc_sli_next_iotag(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq**, align 8
  %7 = alloca %struct.lpfc_iocbq**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.lpfc_sli*, align 8
  %10 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 1
  store %struct.lpfc_sli* %12, %struct.lpfc_sli** %9, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %17 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %10, align 8
  %21 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %22 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %2
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %28 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %30 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %31 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %30, i32 0, i32 2
  %32 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %32, i64 %33
  store %struct.lpfc_iocbq* %29, %struct.lpfc_iocbq** %34, align 8
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock_irq(i32* %36)
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %40 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %10, align 8
  store i64 %41, i64* %3, align 8
  br label %165

42:                                               ; preds = %2
  %43 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %44 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @LPFC_IOCBQ_LOOKUP_INCREMENT, align 4
  %47 = sub nsw i32 65535, %46
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %152

50:                                               ; preds = %42
  %51 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %52 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @LPFC_IOCBQ_LOOKUP_INCREMENT, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %53, %55
  store i64 %56, i64* %8, align 8
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock_irq(i32* %58)
  %60 = load i64, i64* %8, align 8
  %61 = mul i64 %60, 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.lpfc_iocbq** @kzalloc(i64 %61, i32 %62)
  store %struct.lpfc_iocbq** %63, %struct.lpfc_iocbq*** %6, align 8
  %64 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %6, align 8
  %65 = icmp ne %struct.lpfc_iocbq** %64, null
  br i1 %65, label %66, label %151

66:                                               ; preds = %50
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 0
  %69 = call i32 @spin_lock_irq(i32* %68)
  %70 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %71 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %70, i32 0, i32 2
  %72 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %71, align 8
  store %struct.lpfc_iocbq** %72, %struct.lpfc_iocbq*** %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %75 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ule i64 %73, %76
  br i1 %77, label %78, label %111

78:                                               ; preds = %66
  %79 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %6, align 8
  %80 = call i32 @kfree(%struct.lpfc_iocbq** %79)
  %81 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %82 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %10, align 8
  %86 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %87 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %85, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %78
  %91 = load i64, i64* %10, align 8
  %92 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %93 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %95 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %96 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %95, i32 0, i32 2
  %97 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %97, i64 %98
  store %struct.lpfc_iocbq* %94, %struct.lpfc_iocbq** %99, align 8
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %101 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock_irq(i32* %101)
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %105 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load i64, i64* %10, align 8
  store i64 %106, i64* %3, align 8
  br label %165

107:                                              ; preds = %78
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %109 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %108, i32 0, i32 0
  %110 = call i32 @spin_unlock_irq(i32* %109)
  store i64 0, i64* %3, align 8
  br label %165

111:                                              ; preds = %66
  %112 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %113 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %112, i32 0, i32 2
  %114 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %113, align 8
  %115 = icmp ne %struct.lpfc_iocbq** %114, null
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %6, align 8
  %118 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %7, align 8
  %119 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %120 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, 1
  %123 = mul i64 %122, 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 @memcpy(%struct.lpfc_iocbq** %117, %struct.lpfc_iocbq** %118, i32 %124)
  br label %126

126:                                              ; preds = %116, %111
  %127 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %6, align 8
  %128 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %129 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %128, i32 0, i32 2
  store %struct.lpfc_iocbq** %127, %struct.lpfc_iocbq*** %129, align 8
  %130 = load i64, i64* %8, align 8
  %131 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %132 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %131, i32 0, i32 1
  store i64 %130, i64* %132, align 8
  %133 = load i64, i64* %10, align 8
  %134 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %135 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %137 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %138 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %137, i32 0, i32 2
  %139 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %138, align 8
  %140 = load i64, i64* %10, align 8
  %141 = getelementptr inbounds %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %139, i64 %140
  store %struct.lpfc_iocbq* %136, %struct.lpfc_iocbq** %141, align 8
  %142 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %143 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %142, i32 0, i32 0
  %144 = call i32 @spin_unlock_irq(i32* %143)
  %145 = load i64, i64* %10, align 8
  %146 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %147 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  %148 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %7, align 8
  %149 = call i32 @kfree(%struct.lpfc_iocbq** %148)
  %150 = load i64, i64* %10, align 8
  store i64 %150, i64* %3, align 8
  br label %165

151:                                              ; preds = %50
  br label %156

152:                                              ; preds = %42
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %154 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %153, i32 0, i32 0
  %155 = call i32 @spin_unlock_irq(i32* %154)
  br label %156

156:                                              ; preds = %152, %151
  br label %157

157:                                              ; preds = %156
  %158 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %159 = load i32, i32* @KERN_WARNING, align 4
  %160 = load i32, i32* @LOG_SLI, align 4
  %161 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %162 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %158, i32 %159, i32 %160, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %163)
  store i64 0, i64* %3, align 8
  br label %165

165:                                              ; preds = %157, %126, %107, %90, %25
  %166 = load i64, i64* %3, align 8
  ret i64 %166
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.lpfc_iocbq** @kzalloc(i64, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_iocbq**) #1

declare dso_local i32 @memcpy(%struct.lpfc_iocbq**, %struct.lpfc_iocbq**, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
