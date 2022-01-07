; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/amiga/extr_cia.c_cia_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/amiga/extr_cia.c_cia_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ciabase = type { i32, i32 }

@CIA_ICR_ALL = common dso_local global i32 0, align 4
@amiga_custom = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cia_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cia_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ciabase*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ciabase*
  store %struct.ciabase* %9, %struct.ciabase** %5, align 8
  %10 = load %struct.ciabase*, %struct.ciabase** %5, align 8
  %11 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ciabase*, %struct.ciabase** %5, align 8
  %14 = load i32, i32* @CIA_ICR_ALL, align 4
  %15 = call zeroext i8 @cia_set_irq(%struct.ciabase* %13, i32 %14)
  store i8 %15, i8* %7, align 1
  %16 = load %struct.ciabase*, %struct.ciabase** %5, align 8
  %17 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amiga_custom, i32 0, i32 0), align 4
  br label %19

19:                                               ; preds = %31, %2
  %20 = load i8, i8* %7, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load i8, i8* %7, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @m68k_handle_int(i32 %28)
  br label %30

30:                                               ; preds = %27, %22
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = load i8, i8* %7, align 1
  %35 = zext i8 %34 to i32
  %36 = ashr i32 %35, 1
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %7, align 1
  br label %19

38:                                               ; preds = %19
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %39
}

declare dso_local zeroext i8 @cia_set_irq(%struct.ciabase*, i32) #1

declare dso_local i32 @m68k_handle_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
