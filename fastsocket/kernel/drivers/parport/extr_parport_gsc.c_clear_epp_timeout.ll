; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_gsc.c_clear_epp_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_gsc.c_clear_epp_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parport*)* @clear_epp_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_epp_timeout(%struct.parport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parport*, align 8
  %4 = alloca i8, align 1
  store %struct.parport* %0, %struct.parport** %3, align 8
  %5 = load %struct.parport*, %struct.parport** %3, align 8
  %6 = call i32 @parport_gsc_read_status(%struct.parport* %5)
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.parport*, %struct.parport** %3, align 8
  %12 = call i32 @parport_gsc_read_status(%struct.parport* %11)
  %13 = load %struct.parport*, %struct.parport** %3, align 8
  %14 = call i32 @parport_gsc_read_status(%struct.parport* %13)
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %4, align 1
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %17, 1
  %19 = trunc i32 %18 to i8
  %20 = load %struct.parport*, %struct.parport** %3, align 8
  %21 = call i32 @STATUS(%struct.parport* %20)
  %22 = call i32 @parport_writeb(i8 zeroext %19, i32 %21)
  %23 = load i8, i8* %4, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 254
  %26 = trunc i32 %25 to i8
  %27 = load %struct.parport*, %struct.parport** %3, align 8
  %28 = call i32 @STATUS(%struct.parport* %27)
  %29 = call i32 @parport_writeb(i8 zeroext %26, i32 %28)
  %30 = load %struct.parport*, %struct.parport** %3, align 8
  %31 = call i32 @parport_gsc_read_status(%struct.parport* %30)
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %4, align 1
  %33 = load i8, i8* %4, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %10, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @parport_gsc_read_status(%struct.parport*) #1

declare dso_local i32 @parport_writeb(i8 zeroext, i32) #1

declare dso_local i32 @STATUS(%struct.parport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
