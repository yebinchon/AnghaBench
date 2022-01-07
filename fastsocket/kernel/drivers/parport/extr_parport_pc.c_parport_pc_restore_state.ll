; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_pc.c_parport_pc_restore_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_pc.c_parport_pc_restore_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.parport_pc_private* }
%struct.parport_pc_private = type { i8, i8, i64 }
%struct.parport_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*, %struct.parport_state*)* @parport_pc_restore_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_pc_restore_state(%struct.parport* %0, %struct.parport_state* %1) #0 {
  %3 = alloca %struct.parport*, align 8
  %4 = alloca %struct.parport_state*, align 8
  %5 = alloca %struct.parport_pc_private*, align 8
  %6 = alloca i8, align 1
  store %struct.parport* %0, %struct.parport** %3, align 8
  store %struct.parport_state* %1, %struct.parport_state** %4, align 8
  %7 = load %struct.parport*, %struct.parport** %3, align 8
  %8 = getelementptr inbounds %struct.parport, %struct.parport* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.parport_pc_private*, %struct.parport_pc_private** %10, align 8
  store %struct.parport_pc_private* %11, %struct.parport_pc_private** %5, align 8
  %12 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %13 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 4
  %17 = zext i8 %16 to i32
  %18 = load %struct.parport_pc_private*, %struct.parport_pc_private** %5, align 8
  %19 = getelementptr inbounds %struct.parport_pc_private, %struct.parport_pc_private* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 8
  %21 = zext i8 %20 to i32
  %22 = and i32 %17, %21
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %6, align 1
  %24 = load i8, i8* %6, align 1
  %25 = load %struct.parport*, %struct.parport** %3, align 8
  %26 = call i32 @CONTROL(%struct.parport* %25)
  %27 = call i32 @outb(i8 zeroext %24, i32 %26)
  %28 = load i8, i8* %6, align 1
  %29 = load %struct.parport_pc_private*, %struct.parport_pc_private** %5, align 8
  %30 = getelementptr inbounds %struct.parport_pc_private, %struct.parport_pc_private* %29, i32 0, i32 1
  store i8 %28, i8* %30, align 1
  %31 = load %struct.parport_pc_private*, %struct.parport_pc_private** %5, align 8
  %32 = getelementptr inbounds %struct.parport_pc_private, %struct.parport_pc_private* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %2
  %36 = load %struct.parport*, %struct.parport** %3, align 8
  %37 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %38 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ECR_WRITE(%struct.parport* %36, i32 %41)
  br label %43

43:                                               ; preds = %35, %2
  ret void
}

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @CONTROL(%struct.parport*) #1

declare dso_local i32 @ECR_WRITE(%struct.parport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
