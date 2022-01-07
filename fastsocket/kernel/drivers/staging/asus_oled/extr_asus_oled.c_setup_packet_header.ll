; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/asus_oled/extr_asus_oled.c_setup_packet_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/asus_oled/extr_asus_oled.c_setup_packet_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_oled_packet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8, i8, i8, i8, i8, i8, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asus_oled_packet*, i8, i8, i8, i8, i8, i8, i8)* @setup_packet_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_packet_header(%struct.asus_oled_packet* %0, i8 signext %1, i8 signext %2, i8 signext %3, i8 signext %4, i8 signext %5, i8 signext %6, i8 signext %7) #0 {
  %9 = alloca %struct.asus_oled_packet*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  store %struct.asus_oled_packet* %0, %struct.asus_oled_packet** %9, align 8
  store i8 %1, i8* %10, align 1
  store i8 %2, i8* %11, align 1
  store i8 %3, i8* %12, align 1
  store i8 %4, i8* %13, align 1
  store i8 %5, i8* %14, align 1
  store i8 %6, i8* %15, align 1
  store i8 %7, i8* %16, align 1
  %17 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %9, align 8
  %18 = call i32 @memset(%struct.asus_oled_packet* %17, i32 0, i32 4)
  %19 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %9, align 8
  %20 = getelementptr inbounds %struct.asus_oled_packet, %struct.asus_oled_packet* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 85, i32* %21, align 4
  %22 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %9, align 8
  %23 = getelementptr inbounds %struct.asus_oled_packet, %struct.asus_oled_packet* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 170, i32* %24, align 4
  %25 = load i8, i8* %10, align 1
  %26 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %9, align 8
  %27 = getelementptr inbounds %struct.asus_oled_packet, %struct.asus_oled_packet* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i8 %25, i8* %28, align 4
  %29 = load i8, i8* %11, align 1
  %30 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %9, align 8
  %31 = getelementptr inbounds %struct.asus_oled_packet, %struct.asus_oled_packet* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  store i8 %29, i8* %32, align 1
  %33 = load i8, i8* %12, align 1
  %34 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %9, align 8
  %35 = getelementptr inbounds %struct.asus_oled_packet, %struct.asus_oled_packet* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  store i8 %33, i8* %36, align 2
  %37 = load i8, i8* %13, align 1
  %38 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %9, align 8
  %39 = getelementptr inbounds %struct.asus_oled_packet, %struct.asus_oled_packet* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  store i8 %37, i8* %40, align 1
  %41 = load i8, i8* %14, align 1
  %42 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %9, align 8
  %43 = getelementptr inbounds %struct.asus_oled_packet, %struct.asus_oled_packet* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 6
  store i8 %41, i8* %44, align 4
  %45 = load i8, i8* %15, align 1
  %46 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %9, align 8
  %47 = getelementptr inbounds %struct.asus_oled_packet, %struct.asus_oled_packet* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 7
  store i8 %45, i8* %48, align 1
  %49 = load i8, i8* %16, align 1
  %50 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %9, align 8
  %51 = getelementptr inbounds %struct.asus_oled_packet, %struct.asus_oled_packet* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 8
  store i8 %49, i8* %52, align 2
  ret void
}

declare dso_local i32 @memset(%struct.asus_oled_packet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
