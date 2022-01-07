; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/lasat/extr_picvue.c_pvc_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/lasat/extr_picvue.c_pvc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@picvue = common dso_local global %struct.TYPE_2__* null, align 8
@MODE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @pvc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvc_write(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @pvc_reg_read()
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @picvue, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MODE_DATA, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @picvue, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %29

22:                                               ; preds = %2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @picvue, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %22, %16
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @pvc_reg_write(i32 %30)
  %32 = call i32 @ndelay(i32 40)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @pvc_write_byte(i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @MODE_DATA, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @picvue, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %52

46:                                               ; preds = %29
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @picvue, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %46, %39
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @pvc_reg_write(i32 %53)
  %55 = call i32 (...) @pvc_wait()
  ret void
}

declare dso_local i32 @pvc_reg_read(...) #1

declare dso_local i32 @pvc_reg_write(i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @pvc_write_byte(i32, i32) #1

declare dso_local i32 @pvc_wait(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
