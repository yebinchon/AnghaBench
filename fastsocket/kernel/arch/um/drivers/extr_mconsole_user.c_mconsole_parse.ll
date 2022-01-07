; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_mconsole_user.c_mconsole_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_mconsole_user.c_mconsole_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mconsole_command = type { i32 }
%struct.mc_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@commands = common dso_local global %struct.mconsole_command* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mconsole_command* (%struct.mc_request*)* @mconsole_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mconsole_command* @mconsole_parse(%struct.mc_request* %0) #0 {
  %2 = alloca %struct.mconsole_command*, align 8
  %3 = alloca %struct.mc_request*, align 8
  %4 = alloca %struct.mconsole_command*, align 8
  %5 = alloca i32, align 4
  store %struct.mc_request* %0, %struct.mc_request** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.mconsole_command*, %struct.mconsole_command** @commands, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.mconsole_command* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %6
  %12 = load %struct.mconsole_command*, %struct.mconsole_command** @commands, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mconsole_command, %struct.mconsole_command* %12, i64 %14
  store %struct.mconsole_command* %15, %struct.mconsole_command** %4, align 8
  %16 = load %struct.mc_request*, %struct.mc_request** %3, align 8
  %17 = getelementptr inbounds %struct.mc_request, %struct.mc_request* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mconsole_command*, %struct.mconsole_command** %4, align 8
  %21 = getelementptr inbounds %struct.mconsole_command, %struct.mconsole_command* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mconsole_command*, %struct.mconsole_command** %4, align 8
  %24 = getelementptr inbounds %struct.mconsole_command, %struct.mconsole_command* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strlen(i32 %25)
  %27 = call i32 @strncmp(i32 %19, i32 %22, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %11
  %30 = load %struct.mconsole_command*, %struct.mconsole_command** %4, align 8
  store %struct.mconsole_command* %30, %struct.mconsole_command** %2, align 8
  br label %36

31:                                               ; preds = %11
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %6

35:                                               ; preds = %6
  store %struct.mconsole_command* null, %struct.mconsole_command** %2, align 8
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.mconsole_command*, %struct.mconsole_command** %2, align 8
  ret %struct.mconsole_command* %37
}

declare dso_local i32 @ARRAY_SIZE(%struct.mconsole_command*) #1

declare dso_local i32 @strncmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
