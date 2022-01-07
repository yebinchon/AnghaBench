; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s921_core.c_s921_isdb_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s921_core.c_s921_isdb_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s921_isdb_t = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"unhandled command\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s921_isdb_cmd(%struct.s921_isdb_t* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.s921_isdb_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.s921_isdb_t* %0, %struct.s921_isdb_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %24 [
    i32 130, label %9
    i32 129, label %12
    i32 128, label %16
    i32 131, label %20
  ]

9:                                                ; preds = %3
  %10 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %5, align 8
  %11 = call i32 @s921_isdb_init(%struct.s921_isdb_t* %10)
  br label %28

12:                                               ; preds = %3
  %13 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %5, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @s921_isdb_set_parameters(%struct.s921_isdb_t* %13, i8* %14)
  br label %28

16:                                               ; preds = %3
  %17 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %5, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @s921_isdb_tune(%struct.s921_isdb_t* %17, i8* %18)
  br label %28

20:                                               ; preds = %3
  %21 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %5, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @s921_isdb_get_status(%struct.s921_isdb_t* %21, i8* %22)
  br label %28

24:                                               ; preds = %3
  %25 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %29

28:                                               ; preds = %20, %16, %12, %9
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @s921_isdb_init(%struct.s921_isdb_t*) #1

declare dso_local i32 @s921_isdb_set_parameters(%struct.s921_isdb_t*, i8*) #1

declare dso_local i32 @s921_isdb_tune(%struct.s921_isdb_t*, i8*) #1

declare dso_local i32 @s921_isdb_get_status(%struct.s921_isdb_t*, i8*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
