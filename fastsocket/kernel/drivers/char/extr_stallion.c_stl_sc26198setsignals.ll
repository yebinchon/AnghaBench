; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198setsignals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198setsignals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"stl_sc26198setsignals(portp=%p,dtr=%d,rts=%d)\0A\00", align 1
@IPR_DTR = common dso_local global i8 0, align 1
@IPR_RTS = common dso_local global i8 0, align 1
@brd_lock = common dso_local global i32 0, align 4
@IOPIOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlport*, i32, i32)* @stl_sc26198setsignals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_sc26198setsignals(%struct.stlport* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stlport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store %struct.stlport* %0, %struct.stlport** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.stlport*, %struct.stlport** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.stlport* %10, i32 %11, i32 %12)
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i8, i8* @IPR_DTR, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* %8, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %20, %18
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %8, align 1
  br label %34

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i8, i8* @IPR_DTR, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* %7, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %30, %28
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %7, align 1
  br label %33

33:                                               ; preds = %26, %23
  br label %34

34:                                               ; preds = %33, %16
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i8, i8* @IPR_RTS, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* %8, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %41, %39
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %8, align 1
  br label %55

44:                                               ; preds = %34
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i8, i8* @IPR_RTS, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* %7, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %51, %49
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %7, align 1
  br label %54

54:                                               ; preds = %47, %44
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %56)
  %58 = load %struct.stlport*, %struct.stlport** %4, align 8
  %59 = getelementptr inbounds %struct.stlport, %struct.stlport* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.stlport*, %struct.stlport** %4, align 8
  %62 = getelementptr inbounds %struct.stlport, %struct.stlport* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BRDENABLE(i32 %60, i32 %63)
  %65 = load %struct.stlport*, %struct.stlport** %4, align 8
  %66 = load i32, i32* @IOPIOR, align 4
  %67 = load %struct.stlport*, %struct.stlport** %4, align 8
  %68 = load i32, i32* @IOPIOR, align 4
  %69 = call zeroext i8 @stl_sc26198getreg(%struct.stlport* %67, i32 %68)
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* %8, align 1
  %72 = zext i8 %71 to i32
  %73 = xor i32 %72, -1
  %74 = and i32 %70, %73
  %75 = load i8, i8* %7, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %74, %76
  %78 = trunc i32 %77 to i8
  %79 = call i32 @stl_sc26198setreg(%struct.stlport* %65, i32 %66, i8 zeroext %78)
  %80 = load %struct.stlport*, %struct.stlport** %4, align 8
  %81 = getelementptr inbounds %struct.stlport, %struct.stlport* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @BRDDISABLE(i32 %82)
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %84)
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.stlport*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BRDENABLE(i32, i32) #1

declare dso_local i32 @stl_sc26198setreg(%struct.stlport*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @stl_sc26198getreg(%struct.stlport*, i32) #1

declare dso_local i32 @BRDDISABLE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
