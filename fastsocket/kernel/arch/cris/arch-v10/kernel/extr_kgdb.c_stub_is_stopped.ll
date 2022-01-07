; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_kgdb.c_stub_is_stopped.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_kgdb.c_stub_is_stopped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remcomOutBuffer = common dso_local global i8* null, align 8
@R0 = common dso_local global i32 0, align 4
@USP = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@register_size = common dso_local global i32* null, align 8
@current_thread_c = common dso_local global i8* null, align 8
@current_thread_g = common dso_local global i8* null, align 8
@executing_task = common dso_local global i8* null, align 8
@pos = common dso_local global i64 0, align 8
@reg = common dso_local global i32 0, align 4
@reg_g = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @stub_is_stopped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stub_is_stopped(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i8*, i8** @remcomOutBuffer, align 8
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** %3, align 8
  store i8 84, i8* %8, align 1
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i8* @pack_hex_byte(i8* %10, i32 %11)
  store i8* %12, i8** %3, align 8
  %13 = load i32, i32* @R0, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %41, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @USP, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @read_register(i32 %19, i32* %5)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SUCCESS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i8* @pack_hex_byte(i8* %25, i32 %26)
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %3, align 8
  store i8 58, i8* %28, align 1
  %30 = load i8*, i8** %3, align 8
  %31 = bitcast i32* %5 to i8*
  %32 = load i32*, i32** @register_size, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @mem2hex(i8* %30, i8* %31, i32 %36)
  store i8* %37, i8** %3, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %3, align 8
  store i8 59, i8* %38, align 1
  br label %40

40:                                               ; preds = %24, %18
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %14

44:                                               ; preds = %14
  %45 = load i8*, i8** %3, align 8
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** @remcomOutBuffer, align 8
  %47 = call i32 @putpacket(i8* %46)
  ret void
}

declare dso_local i8* @pack_hex_byte(i8*, i32) #1

declare dso_local i32 @read_register(i32, i32*) #1

declare dso_local i8* @mem2hex(i8*, i8*, i32) #1

declare dso_local i32 @putpacket(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
