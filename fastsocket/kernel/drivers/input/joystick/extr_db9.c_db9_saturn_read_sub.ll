; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_db9.c_db9_saturn_read_sub.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_db9.c_db9_saturn_read_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.parport*, i32)* @db9_saturn_read_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @db9_saturn_read_sub(%struct.parport* %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.parport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.parport* %0, %struct.parport** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = load %struct.parport*, %struct.parport** %4, align 8
  %11 = call i32 @parport_read_status(%struct.parport* %10)
  %12 = xor i32 %11, 128
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %6, align 1
  %14 = load i8, i8* %6, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 128
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  %20 = load i8, i8* %6, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 64
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 2, i32 0
  %26 = or i32 %19, %25
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 32
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 4, i32 0
  %33 = or i32 %26, %32
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 16
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 8, i32 0
  %40 = or i32 %33, %39
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %3, align 1
  br label %75

42:                                               ; preds = %2
  %43 = load %struct.parport*, %struct.parport** %4, align 8
  %44 = call i32 @parport_read_data(%struct.parport* %43)
  %45 = and i32 %44, 15
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %6, align 1
  %47 = load i8, i8* %6, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 8
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  %53 = load i8, i8* %6, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 2, i32 0
  %59 = or i32 %52, %58
  %60 = load i8, i8* %6, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 2
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 4, i32 0
  %66 = or i32 %59, %65
  %67 = load i8, i8* %6, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 8, i32 0
  %73 = or i32 %66, %72
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %3, align 1
  br label %75

75:                                               ; preds = %42, %9
  %76 = load i8, i8* %3, align 1
  ret i8 %76
}

declare dso_local i32 @parport_read_status(%struct.parport*) #1

declare dso_local i32 @parport_read_data(%struct.parport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
