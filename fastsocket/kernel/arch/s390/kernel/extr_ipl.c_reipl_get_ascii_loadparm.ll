; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ipl.c_reipl_get_ascii_loadparm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ipl.c_reipl_get_ascii_loadparm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipl_parameter_block = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@LOADPARM_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ipl_parameter_block*)* @reipl_get_ascii_loadparm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reipl_get_ascii_loadparm(i8* %0, %struct.ipl_parameter_block* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ipl_parameter_block*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ipl_parameter_block* %1, %struct.ipl_parameter_block** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %4, align 8
  %7 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* @LOADPARM_LEN, align 8
  %12 = call i32 @memcpy(i8* %5, i32 %10, i64 %11)
  %13 = load i8*, i8** %3, align 8
  %14 = load i64, i64* @LOADPARM_LEN, align 8
  %15 = call i32 @EBCASC(i8* %13, i64 %14)
  %16 = load i8*, i8** %3, align 8
  %17 = load i64, i64* @LOADPARM_LEN, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8 0, i8* %18, align 1
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strstrip(i8* %19)
  ret void
}

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @EBCASC(i8*, i64) #1

declare dso_local i32 @strstrip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
