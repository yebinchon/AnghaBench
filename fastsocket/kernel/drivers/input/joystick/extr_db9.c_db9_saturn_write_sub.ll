; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_db9.c_db9_saturn_write_sub.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_db9.c_db9_saturn_write_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*, i32, i8, i32, i32)* @db9_saturn_write_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db9_saturn_write_sub(%struct.parport* %0, i32 %1, i8 zeroext %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.parport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.parport* %0, %struct.parport** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %75 [
    i32 1, label %13
    i32 2, label %31
    i32 0, label %51
  ]

13:                                               ; preds = %5
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 8, i32 0
  %18 = or i32 176, %17
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 4, i32 0
  %23 = or i32 %18, %22
  %24 = load i8, i8* %8, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %23, %25
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %11, align 1
  %28 = load %struct.parport*, %struct.parport** %6, align 8
  %29 = load i8, i8* %11, align 1
  %30 = call i32 @parport_write_data(%struct.parport* %28, i8 zeroext %29)
  br label %75

31:                                               ; preds = %5
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 4
  %35 = or i32 64, %34
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 8, i32 0
  %40 = or i32 %35, %39
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 4, i32 0
  %45 = or i32 %40, %44
  %46 = or i32 %45, 3
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %11, align 1
  %48 = load %struct.parport*, %struct.parport** %6, align 8
  %49 = load i8, i8* %11, align 1
  %50 = call i32 @parport_write_data(%struct.parport* %48, i8 zeroext %49)
  br label %75

51:                                               ; preds = %5
  %52 = load i8, i8* %8, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 2
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 2, i32 0
  %58 = load i8, i8* %8, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 4, i32 0
  %64 = or i32 %57, %63
  %65 = xor i32 %64, 2
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = or i32 %65, %69
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %11, align 1
  %72 = load %struct.parport*, %struct.parport** %6, align 8
  %73 = load i8, i8* %11, align 1
  %74 = call i32 @parport_write_control(%struct.parport* %72, i8 zeroext %73)
  br label %75

75:                                               ; preds = %5, %51, %31, %13
  ret void
}

declare dso_local i32 @parport_write_data(%struct.parport*, i8 zeroext) #1

declare dso_local i32 @parport_write_control(%struct.parport*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
