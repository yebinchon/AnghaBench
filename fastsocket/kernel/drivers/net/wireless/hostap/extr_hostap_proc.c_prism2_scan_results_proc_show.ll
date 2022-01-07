; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_proc.c_prism2_scan_results_proc_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_proc.c_prism2_scan_results_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hfa384x_hostscan_result* }
%struct.hfa384x_hostscan_result = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [56 x i8] c"CHID ANL SL BcnInt Capab Rate BSSID ATIM SupRates SSID\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%d %d %d %d 0x%02x %d %pM %d \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"<%02x>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @prism2_scan_results_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_scan_results_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hfa384x_hostscan_result*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %14 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %139

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = sub i64 %24, 2
  store i64 %25, i64* %7, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %28, i64 %29
  store %struct.hfa384x_hostscan_result* %30, %struct.hfa384x_hostscan_result** %10, align 8
  %31 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %32 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %33 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %37 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  %40 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %41 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %45 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le16_to_cpu(i32 %46)
  %48 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %49 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %53 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le16_to_cpu(i32 %54)
  %56 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %57 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %60 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le16_to_cpu(i32 %61)
  %63 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %39, i32 %43, i32 %47, i32 %51, i32 %55, i32 %58, i32 %62)
  %64 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %65 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %11, align 8
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %89, %22
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp ult i64 %69, 8
  br i1 %70, label %71, label %92

71:                                               ; preds = %67
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %92

80:                                               ; preds = %71
  %81 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %67

92:                                               ; preds = %79, %67
  %93 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %94 = call i32 @seq_putc(%struct.seq_file* %93, i8 signext 32)
  %95 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %96 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %11, align 8
  %98 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %99 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @le16_to_cpu(i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp sgt i32 %102, 32
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  store i32 32, i32* %9, align 4
  br label %105

105:                                              ; preds = %104, %92
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %133, %105
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %136

110:                                              ; preds = %106
  %111 = load i8*, i8** %11, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  store i8 %115, i8* %12, align 1
  %116 = load i8, i8* %12, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp sge i32 %117, 32
  br i1 %118, label %119, label %127

119:                                              ; preds = %110
  %120 = load i8, i8* %12, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp slt i32 %121, 127
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %125 = load i8, i8* %12, align 1
  %126 = call i32 @seq_putc(%struct.seq_file* %124, i8 signext %125)
  br label %132

127:                                              ; preds = %119, %110
  %128 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %129 = load i8, i8* %12, align 1
  %130 = zext i8 %129 to i32
  %131 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %127, %123
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %106

136:                                              ; preds = %106
  %137 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %138 = call i32 @seq_putc(%struct.seq_file* %137, i8 signext 10)
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %136, %19
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
