; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/amiga/extr_cia.c_cia_set_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/amiga/extr_cia.c_cia_set_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ciabase = type { i8, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8 }

@CIA_ICR_SETCLR = common dso_local global i8 0, align 1
@IF_SETCLR = common dso_local global i32 0, align 4
@amiga_custom = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @cia_set_irq(%struct.ciabase* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.ciabase*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.ciabase* %0, %struct.ciabase** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.ciabase*, %struct.ciabase** %3, align 8
  %7 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = load %struct.ciabase*, %struct.ciabase** %3, align 8
  %13 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 8
  %15 = zext i8 %14 to i32
  %16 = or i32 %15, %11
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %13, align 8
  store i8 %17, i8* %5, align 1
  %18 = load i8, i8* %4, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @CIA_ICR_SETCLR, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load i8, i8* %4, align 1
  %26 = zext i8 %25 to i32
  %27 = load %struct.ciabase*, %struct.ciabase** %3, align 8
  %28 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 8
  %30 = zext i8 %29 to i32
  %31 = or i32 %30, %26
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %28, align 8
  br label %43

33:                                               ; preds = %2
  %34 = load i8, i8* %4, align 1
  %35 = zext i8 %34 to i32
  %36 = xor i32 %35, -1
  %37 = load %struct.ciabase*, %struct.ciabase** %3, align 8
  %38 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %37, i32 0, i32 0
  %39 = load i8, i8* %38, align 8
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, %36
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %38, align 8
  br label %43

43:                                               ; preds = %33, %24
  %44 = load %struct.ciabase*, %struct.ciabase** %3, align 8
  %45 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %44, i32 0, i32 0
  %46 = load i8, i8* %45, align 8
  %47 = zext i8 %46 to i32
  %48 = load %struct.ciabase*, %struct.ciabase** %3, align 8
  %49 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load i32, i32* @IF_SETCLR, align 4
  %55 = load %struct.ciabase*, %struct.ciabase** %3, align 8
  %56 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %54, %57
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amiga_custom, i32 0, i32 0), align 4
  br label %59

59:                                               ; preds = %53, %43
  %60 = load i8, i8* %5, align 1
  %61 = zext i8 %60 to i32
  %62 = load %struct.ciabase*, %struct.ciabase** %3, align 8
  %63 = getelementptr inbounds %struct.ciabase, %struct.ciabase* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %61, %64
  %66 = trunc i32 %65 to i8
  ret i8 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
