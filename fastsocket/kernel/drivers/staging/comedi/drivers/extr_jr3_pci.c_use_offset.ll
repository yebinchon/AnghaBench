; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_use_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_use_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jr3_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jr3_channel*, i16)* @use_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @use_offset(%struct.jr3_channel* %0, i16 signext %1) #0 {
  %3 = alloca %struct.jr3_channel*, align 8
  %4 = alloca i16, align 2
  store %struct.jr3_channel* %0, %struct.jr3_channel** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load %struct.jr3_channel*, %struct.jr3_channel** %3, align 8
  %6 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %5, i32 0, i32 0
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i32
  %9 = and i32 %8, 15
  %10 = add nsw i32 1536, %9
  %11 = call i32 @set_s16(i32* %6, i32 %10)
  ret void
}

declare dso_local i32 @set_s16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
