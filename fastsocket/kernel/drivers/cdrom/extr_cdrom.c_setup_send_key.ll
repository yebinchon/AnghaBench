; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_setup_send_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_setup_send_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_command = type { i32*, i32, i32 }

@GPCMD_SEND_KEY = common dso_local global i32 0, align 4
@CGC_DATA_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packet_command*, i32, i32)* @setup_send_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_send_key(%struct.packet_command* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.packet_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.packet_command* %0, %struct.packet_command** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @GPCMD_SEND_KEY, align 4
  %8 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %9 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %7, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 6
  %15 = or i32 %12, %14
  %16 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %17 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 10
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %30 [
    i32 1, label %21
    i32 3, label %24
    i32 6, label %27
  ]

21:                                               ; preds = %3
  %22 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %23 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %22, i32 0, i32 1
  store i32 16, i32* %23, align 8
  br label %30

24:                                               ; preds = %3
  %25 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %26 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %25, i32 0, i32 1
  store i32 12, i32* %26, align 8
  br label %30

27:                                               ; preds = %3
  %28 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %29 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %28, i32 0, i32 1
  store i32 8, i32* %29, align 8
  br label %30

30:                                               ; preds = %3, %27, %24, %21
  %31 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %32 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %35 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 9
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* @CGC_DATA_WRITE, align 4
  %39 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %40 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
