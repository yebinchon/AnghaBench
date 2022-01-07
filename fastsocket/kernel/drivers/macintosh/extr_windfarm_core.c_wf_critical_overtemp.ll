; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_core.c_wf_critical_overtemp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_core.c_wf_critical_overtemp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wf_critical_overtemp.critical_overtemp_path = internal global i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [24 x i8] c"/sbin/critical_overtemp\00", align 1
@wf_critical_overtemp.envp = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"HOME=/\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"TERM=linux\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"PATH=/sbin:/usr/sbin:/bin:/usr/bin\00", align 1
@UMH_WAIT_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wf_critical_overtemp() #0 {
  %1 = alloca [2 x i8*], align 16
  %2 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  %3 = load i8*, i8** @wf_critical_overtemp.critical_overtemp_path, align 8
  store i8* %3, i8** %2, align 8
  %4 = getelementptr inbounds i8*, i8** %2, i64 1
  store i8* null, i8** %4, align 8
  %5 = load i8*, i8** @wf_critical_overtemp.critical_overtemp_path, align 8
  %6 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  %7 = load i32, i32* @UMH_WAIT_EXEC, align 4
  %8 = call i32 @call_usermodehelper(i8* %5, i8** %6, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @wf_critical_overtemp.envp, i64 0, i64 0), i32 %7)
  ret i32 %8
}

declare dso_local i32 @call_usermodehelper(i8*, i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
