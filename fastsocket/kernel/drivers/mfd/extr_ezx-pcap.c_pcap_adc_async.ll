; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ezx-pcap.c_pcap_adc_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ezx-pcap.c_pcap_adc_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_chip = type { i64, i32, %struct.pcap_adc_request** }
%struct.pcap_adc_request = type { i8*, i8*, i8**, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PCAP_ADC_MAXQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcap_adc_async(%struct.pcap_chip* %0, i8* %1, i32 %2, i8** %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcap_chip*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.pcap_adc_request*, align 8
  store %struct.pcap_chip* %0, %struct.pcap_chip** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.pcap_adc_request* @kmalloc(i32 40, i32 %15)
  store %struct.pcap_adc_request* %16, %struct.pcap_adc_request** %14, align 8
  %17 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %14, align 8
  %18 = icmp ne %struct.pcap_adc_request* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %93

22:                                               ; preds = %6
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %14, align 8
  %25 = getelementptr inbounds %struct.pcap_adc_request, %struct.pcap_adc_request* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %14, align 8
  %28 = getelementptr inbounds %struct.pcap_adc_request, %struct.pcap_adc_request* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load i8**, i8*** %11, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %14, align 8
  %33 = getelementptr inbounds %struct.pcap_adc_request, %struct.pcap_adc_request* %32, i32 0, i32 2
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  store i8* %31, i8** %35, align 8
  %36 = load i8**, i8*** %11, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %14, align 8
  %40 = getelementptr inbounds %struct.pcap_adc_request, %struct.pcap_adc_request* %39, i32 0, i32 2
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  store i8* %38, i8** %42, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %14, align 8
  %45 = getelementptr inbounds %struct.pcap_adc_request, %struct.pcap_adc_request* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %14, align 8
  %48 = getelementptr inbounds %struct.pcap_adc_request, %struct.pcap_adc_request* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %50 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %49, i32 0, i32 1
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %53 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %52, i32 0, i32 2
  %54 = load %struct.pcap_adc_request**, %struct.pcap_adc_request*** %53, align 8
  %55 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %56 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.pcap_adc_request*, %struct.pcap_adc_request** %54, i64 %57
  %59 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %58, align 8
  %60 = icmp ne %struct.pcap_adc_request* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %22
  %62 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %63 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %14, align 8
  %66 = call i32 @kfree(%struct.pcap_adc_request* %65)
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %93

69:                                               ; preds = %22
  %70 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %14, align 8
  %71 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %72 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %71, i32 0, i32 2
  %73 = load %struct.pcap_adc_request**, %struct.pcap_adc_request*** %72, align 8
  %74 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %75 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.pcap_adc_request*, %struct.pcap_adc_request** %73, i64 %76
  store %struct.pcap_adc_request* %70, %struct.pcap_adc_request** %77, align 8
  %78 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %79 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  %82 = load i32, i32* @PCAP_ADC_MAXQ, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = and i64 %81, %84
  %86 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %87 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %89 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %92 = call i32 @pcap_adc_trigger(%struct.pcap_chip* %91)
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %69, %61, %19
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local %struct.pcap_adc_request* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.pcap_adc_request*) #1

declare dso_local i32 @pcap_adc_trigger(%struct.pcap_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
