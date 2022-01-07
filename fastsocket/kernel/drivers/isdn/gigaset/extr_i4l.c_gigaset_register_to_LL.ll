; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_i4l.c_gigaset_register_to_LL.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_i4l.c_gigaset_register_to_LL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32 }

@DEBUG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Register driver capabilities to LL\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s_%u\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ID too long: %s\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@MAX_BUF_SIZE = common dso_local global i32 0, align 4
@ISDN_FEATURE_L2_TRANS = common dso_local global i32 0, align 4
@ISDN_FEATURE_L2_HDLC = common dso_local global i32 0, align 4
@ISDN_FEATURE_L3_TRANS = common dso_local global i32 0, align 4
@ISDN_FEATURE_P_EURO = common dso_local global i32 0, align 4
@HW_HDR_LEN = common dso_local global i32 0, align 4
@command_from_LL = common dso_local global i32 0, align 4
@writebuf_from_LL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"register_isdn failed\0A\00", align 1
@ISDN_FEATURE_L2_X75I = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gigaset_register_to_LL(%struct.cardstate* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cardstate*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %8 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %7, i32 0, i32 3
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %6, align 8
  %9 = load i32, i32* @DEBUG_ANY, align 4
  %10 = call i32 @gig_dbg(i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 11
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %16 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @snprintf(i32 %13, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %14, i32 %17)
  %19 = sext i32 %18 to i64
  %20 = icmp uge i64 %19, 4
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  store i32 0, i32* %3, align 4
  br label %73

24:                                               ; preds = %2
  %25 = load i32, i32* @THIS_MODULE, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 10
  store i32 %25, i32* %27, align 8
  %28 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %29 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @MAX_BUF_SIZE, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @ISDN_FEATURE_L2_TRANS, align 4
  %37 = load i32, i32* @ISDN_FEATURE_L2_HDLC, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @ISDN_FEATURE_L3_TRANS, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @ISDN_FEATURE_P_EURO, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @HW_HDR_LEN, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @command_from_LL, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @writebuf_from_LL, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  store i32* null, i32** %55, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  store i32* null, i32** %59, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = call i32 @register_isdn(%struct.TYPE_3__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %24
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %73

67:                                               ; preds = %24
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %72 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %67, %65, %21
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @gig_dbg(i32, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @register_isdn(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
