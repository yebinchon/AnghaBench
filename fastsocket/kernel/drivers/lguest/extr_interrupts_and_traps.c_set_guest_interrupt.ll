; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_interrupts_and_traps.c_set_guest_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_interrupts_and_traps.c_set_guest_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg_cpu = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@GUEST_PL = common dso_local global i32 0, align 4
@X86_EFLAGS_IF = common dso_local global i32 0, align 4
@__KERNEL_CS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Disabling interrupts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lg_cpu*, i32, i32, i32)* @set_guest_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_guest_interrupt(%struct.lg_cpu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lg_cpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.lg_cpu* %0, %struct.lg_cpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %16 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 3
  %21 = load i32, i32* @GUEST_PL, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %4
  %24 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %25 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %14, align 8
  %27 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %28 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %31 = load i64, i64* %14, align 8
  %32 = call i64 @guest_pa(%struct.lg_cpu* %30, i64 %31)
  store i64 %32, i64* %9, align 8
  store i64 %32, i64* %10, align 8
  %33 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %34 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %35 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @push_guest_stack(%struct.lg_cpu* %33, i64* %9, i32 %38)
  %40 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %41 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %42 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @push_guest_stack(%struct.lg_cpu* %40, i64* %9, i32 %45)
  br label %62

47:                                               ; preds = %4
  %48 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %49 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %48, i32 0, i32 3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %14, align 8
  %54 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %55 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %12, align 4
  %59 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %60 = load i64, i64* %14, align 8
  %61 = call i64 @guest_pa(%struct.lg_cpu* %59, i64 %60)
  store i64 %61, i64* %9, align 8
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %47, %23
  %63 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %64 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %70 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %69, i32 0, i32 2
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = call i64 @get_user(i32 %68, i32* %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %62
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @X86_EFLAGS_IF, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @X86_EFLAGS_IF, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %82, %77, %62
  %88 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @push_guest_stack(%struct.lg_cpu* %88, i64* %9, i32 %89)
  %91 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %92 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %93 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @push_guest_stack(%struct.lg_cpu* %91, i64* %9, i32 %96)
  %98 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %99 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %100 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %99, i32 0, i32 3
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @push_guest_stack(%struct.lg_cpu* %98, i64* %9, i32 %103)
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %87
  %108 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %109 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %110 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %109, i32 0, i32 3
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @push_guest_stack(%struct.lg_cpu* %108, i64* %9, i32 %113)
  br label %115

115:                                              ; preds = %107, %87
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %118 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %117, i32 0, i32 3
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i32 %116, i32* %120, align 4
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* %10, align 8
  %124 = sub i64 %122, %123
  %125 = add i64 %121, %124
  %126 = trunc i64 %125 to i32
  %127 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %128 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %127, i32 0, i32 3
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  store i32 %126, i32* %130, align 4
  %131 = load i32, i32* @__KERNEL_CS, align 4
  %132 = load i32, i32* @GUEST_PL, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %135 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %134, i32 0, i32 3
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @idt_address(i32 %138, i32 %139)
  %141 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %142 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %141, i32 0, i32 3
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 4
  store i32 %140, i32* %144, align 4
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @idt_type(i32 %145, i32 %146)
  %148 = icmp eq i32 %147, 14
  br i1 %148, label %149, label %162

149:                                              ; preds = %115
  %150 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %151 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %150, i32 0, i32 2
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = call i64 @put_user(i32 0, i32* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %149
  %159 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %160 = call i32 @kill_guest(%struct.lg_cpu* %159, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %161

161:                                              ; preds = %158, %149
  br label %162

162:                                              ; preds = %161, %115
  ret void
}

declare dso_local i64 @guest_pa(%struct.lg_cpu*, i64) #1

declare dso_local i32 @push_guest_stack(%struct.lg_cpu*, i64*, i32) #1

declare dso_local i64 @get_user(i32, i32*) #1

declare dso_local i32 @idt_address(i32, i32) #1

declare dso_local i32 @idt_type(i32, i32) #1

declare dso_local i64 @put_user(i32, i32*) #1

declare dso_local i32 @kill_guest(%struct.lg_cpu*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
