; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_set_diversity_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_set_diversity_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @dib8000_set_diversity_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_set_diversity_in(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dib8000_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dib8000_state*, %struct.dib8000_state** %8, align 8
  store %struct.dib8000_state* %9, %struct.dib8000_state** %5, align 8
  %10 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %11 = call i32 @dib8000_read_word(%struct.dib8000_state* %10, i32 273)
  %12 = and i32 %11, 65520
  store i32 %12, i32* %6, align 4
  %13 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %14 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %19 = call i32 @dib8000_write_word(%struct.dib8000_state* %18, i32 272, i32 512)
  %20 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, 4
  %23 = or i32 %22, 2
  %24 = call i32 @dib8000_write_word(%struct.dib8000_state* %20, i32 273, i32 %23)
  br label %31

25:                                               ; preds = %2
  %26 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %27 = call i32 @dib8000_write_word(%struct.dib8000_state* %26, i32 272, i32 0)
  %28 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dib8000_write_word(%struct.dib8000_state* %28, i32 273, i32 %29)
  br label %31

31:                                               ; preds = %25, %17
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %34 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  switch i32 %35, label %51 [
    i32 0, label %36
    i32 1, label %41
    i32 2, label %46
  ]

36:                                               ; preds = %31
  %37 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %38 = call i32 @dib8000_write_word(%struct.dib8000_state* %37, i32 270, i32 1)
  %39 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %40 = call i32 @dib8000_write_word(%struct.dib8000_state* %39, i32 271, i32 0)
  br label %51

41:                                               ; preds = %31
  %42 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %43 = call i32 @dib8000_write_word(%struct.dib8000_state* %42, i32 270, i32 6)
  %44 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %45 = call i32 @dib8000_write_word(%struct.dib8000_state* %44, i32 271, i32 6)
  br label %51

46:                                               ; preds = %31
  %47 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %48 = call i32 @dib8000_write_word(%struct.dib8000_state* %47, i32 270, i32 0)
  %49 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %50 = call i32 @dib8000_write_word(%struct.dib8000_state* %49, i32 271, i32 1)
  br label %51

51:                                               ; preds = %31, %46, %41, %36
  ret i32 0
}

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
