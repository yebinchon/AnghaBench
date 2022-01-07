; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcsusb.c_hfcsusb_start_endpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcsusb.c_hfcsusb_start_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfcsusb = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@HFCUSB_D_RX = common dso_local global i64 0, align 8
@HFCUSB_B1_RX = common dso_local global i64 0, align 8
@HFCUSB_B2_RX = common dso_local global i64 0, align 8
@HFCUSB_PCM_RX = common dso_local global i64 0, align 8
@CNF_3INT3ISO = common dso_local global i64 0, align 8
@CNF_4INT3ISO = common dso_local global i64 0, align 8
@CNF_3ISO3ISO = common dso_local global i64 0, align 8
@CNF_4ISO3ISO = common dso_local global i64 0, align 8
@ISOC_PACKETS_D = common dso_local global i32 0, align 4
@rx_iso_complete = common dso_local global i32 0, align 4
@ISOC_PACKETS_B = common dso_local global i32 0, align 4
@HFCUSB_D_TX = common dso_local global i32 0, align 4
@tx_iso_complete = common dso_local global i32 0, align 4
@HFCUSB_B1_TX = common dso_local global i32 0, align 4
@HFCUSB_B2_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfcsusb*, i32)* @hfcsusb_start_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfcsusb_start_endpoint(%struct.hfcsusb* %0, i32 %1) #0 {
  %3 = alloca %struct.hfcsusb*, align 8
  %4 = alloca i32, align 4
  store %struct.hfcsusb* %0, %struct.hfcsusb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 129
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %9 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load i64, i64* @HFCUSB_D_RX, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  br label %161

17:                                               ; preds = %7, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 131
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %22 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i64, i64* @HFCUSB_B1_RX, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %161

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 130
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %35 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i64, i64* @HFCUSB_B2_RX, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %161

43:                                               ; preds = %33, %30
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 128
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %48 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i64, i64* @HFCUSB_PCM_RX, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %161

56:                                               ; preds = %46, %43
  %57 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %58 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CNF_3INT3ISO, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %64 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CNF_4INT3ISO, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %62, %56
  %69 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %70 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = mul nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 1
  %77 = call i32 @start_int_fifo(%struct.TYPE_3__* %76)
  br label %78

78:                                               ; preds = %68, %62
  %79 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %80 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CNF_3ISO3ISO, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %86 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CNF_4ISO3ISO, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %129

90:                                               ; preds = %84, %78
  %91 = load i32, i32* %4, align 4
  switch i32 %91, label %128 [
    i32 129, label %92
    i32 128, label %101
    i32 131, label %110
    i32 130, label %119
  ]

92:                                               ; preds = %90
  %93 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %94 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i64, i64* @HFCUSB_D_RX, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %96
  %98 = load i32, i32* @ISOC_PACKETS_D, align 4
  %99 = load i32, i32* @rx_iso_complete, align 4
  %100 = call i32 @start_isoc_chain(%struct.TYPE_3__* %97, i32 %98, i32 %99, i32 16)
  br label %128

101:                                              ; preds = %90
  %102 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %103 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %102, i32 0, i32 1
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i64, i64* @HFCUSB_PCM_RX, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %105
  %107 = load i32, i32* @ISOC_PACKETS_D, align 4
  %108 = load i32, i32* @rx_iso_complete, align 4
  %109 = call i32 @start_isoc_chain(%struct.TYPE_3__* %106, i32 %107, i32 %108, i32 16)
  br label %128

110:                                              ; preds = %90
  %111 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %112 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %111, i32 0, i32 1
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load i64, i64* @HFCUSB_B1_RX, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %114
  %116 = load i32, i32* @ISOC_PACKETS_B, align 4
  %117 = load i32, i32* @rx_iso_complete, align 4
  %118 = call i32 @start_isoc_chain(%struct.TYPE_3__* %115, i32 %116, i32 %117, i32 16)
  br label %128

119:                                              ; preds = %90
  %120 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %121 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %120, i32 0, i32 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load i64, i64* @HFCUSB_B2_RX, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %123
  %125 = load i32, i32* @ISOC_PACKETS_B, align 4
  %126 = load i32, i32* @rx_iso_complete, align 4
  %127 = call i32 @start_isoc_chain(%struct.TYPE_3__* %124, i32 %125, i32 %126, i32 16)
  br label %128

128:                                              ; preds = %90, %119, %110, %101, %92
  br label %129

129:                                              ; preds = %128, %84
  %130 = load i32, i32* %4, align 4
  switch i32 %130, label %161 [
    i32 129, label %131
    i32 131, label %141
    i32 130, label %151
  ]

131:                                              ; preds = %129
  %132 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %133 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %132, i32 0, i32 1
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = load i32, i32* @HFCUSB_D_TX, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %136
  %138 = load i32, i32* @ISOC_PACKETS_B, align 4
  %139 = load i32, i32* @tx_iso_complete, align 4
  %140 = call i32 @start_isoc_chain(%struct.TYPE_3__* %137, i32 %138, i32 %139, i32 1)
  br label %161

141:                                              ; preds = %129
  %142 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %143 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %142, i32 0, i32 1
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = load i32, i32* @HFCUSB_B1_TX, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i64 %146
  %148 = load i32, i32* @ISOC_PACKETS_D, align 4
  %149 = load i32, i32* @tx_iso_complete, align 4
  %150 = call i32 @start_isoc_chain(%struct.TYPE_3__* %147, i32 %148, i32 %149, i32 1)
  br label %161

151:                                              ; preds = %129
  %152 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %153 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %152, i32 0, i32 1
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = load i32, i32* @HFCUSB_B2_TX, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 %156
  %158 = load i32, i32* @ISOC_PACKETS_B, align 4
  %159 = load i32, i32* @tx_iso_complete, align 4
  %160 = call i32 @start_isoc_chain(%struct.TYPE_3__* %157, i32 %158, i32 %159, i32 1)
  br label %161

161:                                              ; preds = %16, %29, %42, %55, %129, %151, %141, %131
  ret void
}

declare dso_local i32 @start_int_fifo(%struct.TYPE_3__*) #1

declare dso_local i32 @start_isoc_chain(%struct.TYPE_3__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
