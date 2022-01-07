; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_controller_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_controller_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32, i32, %struct.isci_request**, i32*, i8*, i32, i32, i8*, i32, i8*, i32, %struct.TYPE_2__* }
%struct.isci_request = type { %struct.isci_host*, i32, %struct.isci_host*, i32* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@SCU_MAX_COMPLETION_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCI_UFI_TOTAL_SIZE = common dso_local global i64 0, align 8
@SCI_MAX_IO_REQUESTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_host*)* @sci_controller_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_controller_dma_alloc(%struct.isci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.isci_request*, align 8
  %8 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %3, align 8
  %9 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %10 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %9, i32 0, i32 11
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %14 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %13, i32 0, i32 9
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %145

18:                                               ; preds = %1
  %19 = load i32, i32* @SCU_MAX_COMPLETION_QUEUE_ENTRIES, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  store i64 %21, i64* %5, align 8
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %26 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %25, i32 0, i32 10
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @dmam_alloc_coherent(%struct.device* %22, i32 %24, i32* %26, i32 %27)
  %29 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %30 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %29, i32 0, i32 9
  store i8* %28, i8** %30, align 8
  %31 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %32 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %31, i32 0, i32 9
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %18
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %145

38:                                               ; preds = %18
  %39 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %40 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  store i64 %43, i64* %5, align 8
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %48 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %47, i32 0, i32 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @dmam_alloc_coherent(%struct.device* %44, i32 %46, i32* %48, i32 %49)
  %51 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %52 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %51, i32 0, i32 7
  store i8* %50, i8** %52, align 8
  %53 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %54 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %53, i32 0, i32 7
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %38
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %145

60:                                               ; preds = %38
  %61 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %62 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  store i64 %65, i64* %5, align 8
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %70 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %69, i32 0, i32 6
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i8* @dmam_alloc_coherent(%struct.device* %66, i32 %68, i32* %70, i32 %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %75 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %74, i32 0, i32 3
  store i32* %73, i32** %75, align 8
  %76 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %77 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %60
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %145

83:                                               ; preds = %60
  %84 = load i64, i64* @SCI_UFI_TOTAL_SIZE, align 8
  store i64 %84, i64* %5, align 8
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load i64, i64* %5, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %89 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %88, i32 0, i32 5
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i8* @dmam_alloc_coherent(%struct.device* %85, i32 %87, i32* %89, i32 %90)
  %92 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %93 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %95 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %94, i32 0, i32 4
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %83
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %145

101:                                              ; preds = %83
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %141, %101
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @SCI_MAX_IO_REQUESTS, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %144

106:                                              ; preds = %102
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call i8* @dmam_alloc_coherent(%struct.device* %107, i32 32, i32* %8, i32 %108)
  %110 = bitcast i8* %109 to %struct.isci_request*
  store %struct.isci_request* %110, %struct.isci_request** %7, align 8
  %111 = load %struct.isci_request*, %struct.isci_request** %7, align 8
  %112 = icmp ne %struct.isci_request* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %145

116:                                              ; preds = %106
  %117 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %118 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load %struct.isci_request*, %struct.isci_request** %7, align 8
  %124 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %123, i32 0, i32 3
  store i32* %122, i32** %124, align 8
  %125 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %126 = load %struct.isci_request*, %struct.isci_request** %7, align 8
  %127 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %126, i32 0, i32 2
  store %struct.isci_host* %125, %struct.isci_host** %127, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.isci_request*, %struct.isci_request** %7, align 8
  %130 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %132 = load %struct.isci_request*, %struct.isci_request** %7, align 8
  %133 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %132, i32 0, i32 0
  store %struct.isci_host* %131, %struct.isci_host** %133, align 8
  %134 = load %struct.isci_request*, %struct.isci_request** %7, align 8
  %135 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %136 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %135, i32 0, i32 2
  %137 = load %struct.isci_request**, %struct.isci_request*** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.isci_request*, %struct.isci_request** %137, i64 %139
  store %struct.isci_request* %134, %struct.isci_request** %140, align 8
  br label %141

141:                                              ; preds = %116
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %102

144:                                              ; preds = %102
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %144, %113, %98, %80, %57, %35, %17
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i8* @dmam_alloc_coherent(%struct.device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
