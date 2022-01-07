; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_93cx6.c_ahc_read_seeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_93cx6.c_ahc_read_seeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seeprom_descriptor = type { i32, i32, i32, i32, i32, i32, i32 }

@seeprom_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_read_seeprom(%struct.seeprom_descriptor* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.seeprom_descriptor*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.seeprom_descriptor* %0, %struct.seeprom_descriptor** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %10, align 4
  br label %14

14:                                               ; preds = %136, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %139

20:                                               ; preds = %14
  %21 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %22 = call i32 @send_seeprom_cmd(%struct.seeprom_descriptor* %21, i32* @seeprom_read)
  %23 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %24 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %27 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %25, %28
  store i32 %29, i32* %12, align 4
  %30 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %31 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %82, %20
  %35 = load i32, i32* %9, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %85

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = shl i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %45 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %12, align 4
  %48 = xor i32 %47, %46
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %43, %37
  %50 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %50, i32 %51)
  %53 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %54 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %55 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @CLOCK_PULSE(%struct.seeprom_descriptor* %53, i32 %56)
  %58 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %61 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %59, %62
  %64 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %58, i32 %63)
  %65 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %66 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %67 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @CLOCK_PULSE(%struct.seeprom_descriptor* %65, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = shl i32 1, %71
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %49
  %76 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %77 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %12, align 4
  %80 = xor i32 %79, %78
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %75, %49
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %9, align 4
  br label %34

85:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  store i32 16, i32* %9, align 4
  br label %86

86:                                               ; preds = %123, %85
  %87 = load i32, i32* %9, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %126

89:                                               ; preds = %86
  %90 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %90, i32 %91)
  %93 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %94 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %95 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @CLOCK_PULSE(%struct.seeprom_descriptor* %93, i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = shl i32 %98, 1
  store i32 %99, i32* %11, align 4
  %100 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %101 = call i32 @SEEPROM_DATA_INB(%struct.seeprom_descriptor* %100)
  %102 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %103 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %101, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %89
  %108 = load i32, i32* %11, align 4
  %109 = or i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %107, %89
  %111 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %114 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = xor i32 %112, %115
  %117 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %111, i32 %116)
  %118 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %119 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %120 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @CLOCK_PULSE(%struct.seeprom_descriptor* %118, i32 %121)
  br label %123

123:                                              ; preds = %110
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %9, align 4
  br label %86

126:                                              ; preds = %86
  %127 = load i32, i32* %11, align 4
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %7, align 4
  %131 = sub nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %128, i64 %132
  store i32 %127, i32* %133, align 4
  %134 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %135 = call i32 @reset_seeprom(%struct.seeprom_descriptor* %134)
  br label %136

136:                                              ; preds = %126
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %14

139:                                              ; preds = %14
  ret i32 1
}

declare dso_local i32 @send_seeprom_cmd(%struct.seeprom_descriptor*, i32*) #1

declare dso_local i32 @SEEPROM_OUTB(%struct.seeprom_descriptor*, i32) #1

declare dso_local i32 @CLOCK_PULSE(%struct.seeprom_descriptor*, i32) #1

declare dso_local i32 @SEEPROM_DATA_INB(%struct.seeprom_descriptor*) #1

declare dso_local i32 @reset_seeprom(%struct.seeprom_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
