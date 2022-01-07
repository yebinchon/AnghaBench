; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ser-gigaset.c_gigaset_set_modem_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ser-gigaset.c_gigaset_set_modem_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.tty_struct* }
%struct.tty_struct = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.tty_struct*, i32*, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@DEBUG_IF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"tiocmset set %x clear %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*, i32, i32)* @gigaset_set_modem_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gigaset_set_modem_ctrl(%struct.cardstate* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cardstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cardstate* %0, %struct.cardstate** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %12 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.tty_struct*, %struct.tty_struct** %15, align 8
  store %struct.tty_struct* %16, %struct.tty_struct** %8, align 8
  %17 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %18 = icmp ne %struct.tty_struct* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32 (%struct.tty_struct*, i32*, i32, i32)*, i32 (%struct.tty_struct*, i32*, i32, i32)** %28, align 8
  %30 = icmp ne i32 (%struct.tty_struct*, i32*, i32, i32)* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24, %19, %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %63

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %63

49:                                               ; preds = %45, %34
  %50 = load i32, i32* @DEBUG_IF, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @gig_dbg(i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %55 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32 (%struct.tty_struct*, i32*, i32, i32)*, i32 (%struct.tty_struct*, i32*, i32, i32)** %57, align 8
  %59 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 %58(%struct.tty_struct* %59, i32* null, i32 %60, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %49, %48, %31
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @gig_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
