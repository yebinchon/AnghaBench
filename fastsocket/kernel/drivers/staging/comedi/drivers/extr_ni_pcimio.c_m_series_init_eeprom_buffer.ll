; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_pcimio.c_m_series_init_eeprom_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_pcimio.c_m_series_init_eeprom_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i8**, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.comedi_device = type { i32 }

@m_series_init_eeprom_buffer.Start_Cal_EEPROM = internal constant i32 1024, align 4
@m_series_init_eeprom_buffer.window_size = internal constant i32 10, align 4
@m_series_init_eeprom_buffer.serial_number_eeprom_offset = internal constant i32 4, align 4
@m_series_init_eeprom_buffer.serial_number_eeprom_length = internal constant i32 4, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@MITE_IODWBSR = common dso_local global i64 0, align 8
@MITE_IODWBSR_1 = common dso_local global i64 0, align 8
@MITE_IODWCR_1 = common dso_local global i64 0, align 8
@M_SERIES_EEPROM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @m_series_init_eeprom_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m_series_init_eeprom_buffer(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MITE_IODWBSR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MITE_IODWBSR_1, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MITE_IODWCR_1, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MITE_IODWBSR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 0, i64 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 138, %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MITE_IODWBSR_1, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %45, i64 %52)
  %54 = load i32, i32* %5, align 4
  %55 = or i32 1, %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MITE_IODWCR_1, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %55, i64 %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 48
  %70 = call i32 @writel(i32 15, i64 %69)
  %71 = call i32 @BUG_ON(i32 0)
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %87, %1
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 4
  br i1 %74, label %75, label %90

75:                                               ; preds = %72
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = bitcast i64* %77 to i8*
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8* %81, i8** %7, align 8
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 4, %82
  %84 = call i8* @ni_readb(i32 %83)
  %85 = ptrtoint i8* %84 to i8
  %86 = load i8*, i8** %7, align 8
  store i8 %85, i8* %86, align 1
  br label %87

87:                                               ; preds = %75
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %72

90:                                               ; preds = %72
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @be32_to_cpu(i64 %93)
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %111, %90
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @M_SERIES_EEPROM_SIZE, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 1024, %102
  %104 = call i8* @ni_readb(i32 %103)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i8**, i8*** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  store i8* %104, i8** %110, align 8
  br label %111

111:                                              ; preds = %101
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %97

114:                                              ; preds = %97
  %115 = load i32, i32* %4, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MITE_IODWBSR_1, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i32 %115, i64 %122)
  %124 = load i32, i32* %3, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @MITE_IODWBSR, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @writel(i32 %124, i64 %131)
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @MITE_IODWCR_1, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @writel(i32 %133, i64 %140)
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 48
  %148 = call i32 @writel(i32 0, i64 %147)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @ni_readb(i32) #1

declare dso_local i64 @be32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
