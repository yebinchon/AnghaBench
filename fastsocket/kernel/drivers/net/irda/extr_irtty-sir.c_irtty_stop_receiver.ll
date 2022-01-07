; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_irtty-sir.c_irtty_stop_receiver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_irtty-sir.c_irtty_stop_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.TYPE_2__*, %struct.ktermios* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*, %struct.ktermios*)* }
%struct.ktermios = type { i32 }

@CREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i32)* @irtty_stop_receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irtty_stop_receiver(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ktermios, align 4
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 2
  %12 = load %struct.ktermios*, %struct.ktermios** %11, align 8
  %13 = bitcast %struct.ktermios* %5 to i8*
  %14 = bitcast %struct.ktermios* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 2
  %17 = load %struct.ktermios*, %struct.ktermios** %16, align 8
  %18 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @CREAD, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @CREAD, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %34 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %33, i32 0, i32 2
  %35 = load %struct.ktermios*, %struct.ktermios** %34, align 8
  %36 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %38 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.ktermios*)** %40, align 8
  %42 = icmp ne i32 (%struct.tty_struct*, %struct.ktermios*)* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %31
  %44 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %45 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.ktermios*)** %47, align 8
  %49 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %50 = call i32 %48(%struct.tty_struct* %49, %struct.ktermios* %5)
  br label %51

51:                                               ; preds = %43, %31
  %52 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %53 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
