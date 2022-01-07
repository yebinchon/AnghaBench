; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_io_apic.c_IO_APIC_get_PCI_irq_vector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_io_apic.c_IO_APIC_get_PCI_irq_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.io_apic_irq_attr = type { i32 }

@APIC_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"querying PCI -> IRQ mapping bus:%d, slot:%d, pin:%d.\0A\00", align 1
@mp_bus_not_pci = common dso_local global i32 0, align 4
@APIC_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"PCI BIOS passed nonexistent PCI bus %d!\0A\00", align 1
@mp_irq_entries = common dso_local global i32 0, align 4
@mp_irqs = common dso_local global %struct.TYPE_3__* null, align 8
@nr_ioapics = common dso_local global i32 0, align 4
@mp_ioapics = common dso_local global %struct.TYPE_4__* null, align 8
@MP_APIC_ALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IO_APIC_get_PCI_irq_vector(i32 %0, i32 %1, i32 %2, %struct.io_apic_irq_attr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.io_apic_irq_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.io_apic_irq_attr* %3, %struct.io_apic_irq_attr** %9, align 8
  store i32 -1, i32* %12, align 4
  %15 = load i32, i32* @APIC_DEBUG, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 (i32, i8*, i32, ...) @apic_printk(i32 %15, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @mp_bus_not_pci, align 4
  %22 = call i64 @test_bit(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32, i32* @APIC_VERBOSE, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (i32, i8*, i32, ...) @apic_printk(i32 %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i32 -1, i32* %5, align 4
  br label %167

28:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %162, %28
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @mp_irq_entries, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %165

33:                                               ; preds = %29
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mp_irqs, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %69, %33
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @nr_ioapics, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %40
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mp_ioapics, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mp_irqs, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %50, %56
  br i1 %57, label %67, label %58

58:                                               ; preds = %44
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mp_irqs, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MP_APIC_ALL, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58, %44
  br label %72

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %40

72:                                               ; preds = %67, %40
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @mp_bus_not_pci, align 4
  %75 = call i64 @test_bit(i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %161, label %77

77:                                               ; preds = %72
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mp_irqs, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %161, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %161

89:                                               ; preds = %85
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mp_irqs, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = ashr i32 %96, 2
  %98 = and i32 %97, 31
  %99 = icmp eq i32 %90, %98
  br i1 %99, label %100, label %161

100:                                              ; preds = %89
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mp_irqs, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @pin_2_irq(i32 %101, i32 %102, i32 %108)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %100
  %113 = load i32, i32* %14, align 4
  %114 = call i64 @IO_APIC_IRQ(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  br label %162

117:                                              ; preds = %112, %100
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mp_irqs, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, 3
  %126 = icmp eq i32 %118, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %117
  %128 = load %struct.io_apic_irq_attr*, %struct.io_apic_irq_attr** %9, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mp_irqs, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @irq_trigger(i32 %136)
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @irq_polarity(i32 %138)
  %140 = call i32 @set_io_apic_irq_attr(%struct.io_apic_irq_attr* %128, i32 %129, i32 %135, i32 %137, i32 %139)
  %141 = load i32, i32* %14, align 4
  store i32 %141, i32* %5, align 4
  br label %167

142:                                              ; preds = %117
  %143 = load i32, i32* %12, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %142
  %146 = load %struct.io_apic_irq_attr*, %struct.io_apic_irq_attr** %9, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mp_irqs, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @irq_trigger(i32 %154)
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @irq_polarity(i32 %156)
  %158 = call i32 @set_io_apic_irq_attr(%struct.io_apic_irq_attr* %146, i32 %147, i32 %153, i32 %155, i32 %157)
  %159 = load i32, i32* %14, align 4
  store i32 %159, i32* %12, align 4
  br label %160

160:                                              ; preds = %145, %142
  br label %161

161:                                              ; preds = %160, %89, %85, %77, %72
  br label %162

162:                                              ; preds = %161, %116
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %29

165:                                              ; preds = %29
  %166 = load i32, i32* %12, align 4
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %165, %127, %24
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @apic_printk(i32, i8*, i32, ...) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @pin_2_irq(i32, i32, i32) #1

declare dso_local i64 @IO_APIC_IRQ(i32) #1

declare dso_local i32 @set_io_apic_irq_attr(%struct.io_apic_irq_attr*, i32, i32, i32, i32) #1

declare dso_local i32 @irq_trigger(i32) #1

declare dso_local i32 @irq_polarity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
