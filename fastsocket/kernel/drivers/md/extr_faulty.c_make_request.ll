; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_faulty.c_make_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_faulty.c_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.faulty_conf* }
%struct.faulty_conf = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32, i32, i32, %struct.bio*, i64 }

@WRITE = common dso_local global i64 0, align 8
@WriteAll = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@WritePersistent = common dso_local global i32 0, align 4
@WriteTransient = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@ReadTransient = common dso_local global i32 0, align 4
@ReadPersistent = common dso_local global i32 0, align 4
@ReadFixable = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@faulty_fail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.bio*)* @make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_request(%struct.mddev* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.faulty_conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %9 = load %struct.mddev*, %struct.mddev** %4, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 0
  %11 = load %struct.faulty_conf*, %struct.faulty_conf** %10, align 8
  store %struct.faulty_conf* %11, %struct.faulty_conf** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = call i64 @bio_data_dir(%struct.bio* %12)
  %14 = load i64, i64* @WRITE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %66

16:                                               ; preds = %2
  %17 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %18 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @WriteAll, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call i64 @atomic_read(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @bio_endio(%struct.bio* %25, i32 %27)
  store i32 0, i32* %3, align 4
  br label %146

29:                                               ; preds = %16
  %30 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %31 = load %struct.bio*, %struct.bio** %5, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.bio*, %struct.bio** %5, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.bio*, %struct.bio** %5, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 %39, 9
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %36, %41
  %43 = load i64, i64* @WRITE, align 8
  %44 = call i64 @check_sector(%struct.faulty_conf* %30, i64 %33, i64 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %47

47:                                               ; preds = %46, %29
  %48 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %49 = load i32, i32* @WritePersistent, align 4
  %50 = call i64 @check_mode(%struct.faulty_conf* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %54 = load %struct.bio*, %struct.bio** %5, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @WritePersistent, align 4
  %58 = call i32 @add_sector(%struct.faulty_conf* %53, i64 %56, i32 %57)
  store i32 1, i32* %7, align 4
  br label %59

59:                                               ; preds = %52, %47
  %60 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %61 = load i32, i32* @WriteTransient, align 4
  %62 = call i64 @check_mode(%struct.faulty_conf* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 1, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %59
  br label %115

66:                                               ; preds = %2
  %67 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %68 = load %struct.bio*, %struct.bio** %5, align 8
  %69 = getelementptr inbounds %struct.bio, %struct.bio* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.bio*, %struct.bio** %5, align 8
  %72 = getelementptr inbounds %struct.bio, %struct.bio* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.bio*, %struct.bio** %5, align 8
  %75 = getelementptr inbounds %struct.bio, %struct.bio* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = ashr i32 %76, 9
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %73, %78
  %80 = load i64, i64* @READ, align 8
  %81 = call i64 @check_sector(%struct.faulty_conf* %67, i64 %70, i64 %79, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %66
  store i32 1, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %66
  %85 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %86 = load i32, i32* @ReadTransient, align 4
  %87 = call i64 @check_mode(%struct.faulty_conf* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 1, i32* %7, align 4
  br label %90

90:                                               ; preds = %89, %84
  %91 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %92 = load i32, i32* @ReadPersistent, align 4
  %93 = call i64 @check_mode(%struct.faulty_conf* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %97 = load %struct.bio*, %struct.bio** %5, align 8
  %98 = getelementptr inbounds %struct.bio, %struct.bio* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @ReadPersistent, align 4
  %101 = call i32 @add_sector(%struct.faulty_conf* %96, i64 %99, i32 %100)
  store i32 1, i32* %7, align 4
  br label %102

102:                                              ; preds = %95, %90
  %103 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %104 = load i32, i32* @ReadFixable, align 4
  %105 = call i64 @check_mode(%struct.faulty_conf* %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %109 = load %struct.bio*, %struct.bio** %5, align 8
  %110 = getelementptr inbounds %struct.bio, %struct.bio* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* @ReadFixable, align 4
  %113 = call i32 @add_sector(%struct.faulty_conf* %108, i64 %111, i32 %112)
  store i32 1, i32* %7, align 4
  br label %114

114:                                              ; preds = %107, %102
  br label %115

115:                                              ; preds = %114, %65
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %115
  %119 = load %struct.bio*, %struct.bio** %5, align 8
  %120 = load i32, i32* @GFP_NOIO, align 4
  %121 = load %struct.mddev*, %struct.mddev** %4, align 8
  %122 = call %struct.bio* @bio_clone_mddev(%struct.bio* %119, i32 %120, %struct.mddev* %121)
  store %struct.bio* %122, %struct.bio** %8, align 8
  %123 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %124 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.bio*, %struct.bio** %8, align 8
  %129 = getelementptr inbounds %struct.bio, %struct.bio* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.bio*, %struct.bio** %5, align 8
  %131 = load %struct.bio*, %struct.bio** %8, align 8
  %132 = getelementptr inbounds %struct.bio, %struct.bio* %131, i32 0, i32 3
  store %struct.bio* %130, %struct.bio** %132, align 8
  %133 = load i32, i32* @faulty_fail, align 4
  %134 = load %struct.bio*, %struct.bio** %8, align 8
  %135 = getelementptr inbounds %struct.bio, %struct.bio* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.bio*, %struct.bio** %8, align 8
  %137 = call i32 @generic_make_request(%struct.bio* %136)
  store i32 0, i32* %3, align 4
  br label %146

138:                                              ; preds = %115
  %139 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %140 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %139, i32 0, i32 0
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.bio*, %struct.bio** %5, align 8
  %145 = getelementptr inbounds %struct.bio, %struct.bio* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  store i32 1, i32* %3, align 4
  br label %146

146:                                              ; preds = %138, %118, %24
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i64 @check_sector(%struct.faulty_conf*, i64, i64, i64) #1

declare dso_local i64 @check_mode(%struct.faulty_conf*, i32) #1

declare dso_local i32 @add_sector(%struct.faulty_conf*, i64, i32) #1

declare dso_local %struct.bio* @bio_clone_mddev(%struct.bio*, i32, %struct.mddev*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
