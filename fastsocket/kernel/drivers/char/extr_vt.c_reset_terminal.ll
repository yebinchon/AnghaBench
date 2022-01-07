; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_reset_terminal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_reset_terminal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i64 }
%struct.vc_data = type { i32, i32, i64, i32*, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, i64, i32, i32, i32, i64 }

@ESnormal = common dso_local global i32 0, align 4
@LAT1_MAP = common dso_local global i32 0, align 4
@GRAF_MAP = common dso_local global i32 0, align 4
@default_utf8 = common dso_local global i32 0, align 4
@decarm = common dso_local global i32 0, align 4
@decckm = common dso_local global i32 0, align 4
@kbdapplic = common dso_local global i32 0, align 4
@lnm = common dso_local global i32 0, align 4
@kbd_table = common dso_local global %struct.TYPE_2__* null, align 8
@LED_SHOW_FLAGS = common dso_local global i32 0, align 4
@CUR_DEFAULT = common dso_local global i32 0, align 4
@DEFAULT_BELL_PITCH = common dso_local global i32 0, align 4
@DEFAULT_BELL_DURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @reset_terminal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_terminal(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %6 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %5, i32 0, i32 26
  store i64 0, i64* %6, align 8
  %7 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %8 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %7, i32 0, i32 24
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %11 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %10, i32 0, i32 25
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @ESnormal, align 4
  %13 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %14 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 23
  store i32 %12, i32* %14, align 8
  %15 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 22
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @LAT1_MAP, align 4
  %18 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %19 = call i32 @set_translate(i32 %17, %struct.vc_data* %18)
  %20 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %21 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %20, i32 0, i32 21
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @LAT1_MAP, align 4
  %23 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %24 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %23, i32 0, i32 20
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @GRAF_MAP, align 4
  %26 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 19
  store i32 %25, i32* %27, align 8
  %28 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %29 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %28, i32 0, i32 18
  store i64 0, i64* %29, align 8
  %30 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %31 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %30, i32 0, i32 17
  store i64 0, i64* %31, align 8
  %32 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %33 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %32, i32 0, i32 16
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @default_utf8, align 4
  %35 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %36 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %35, i32 0, i32 15
  store i32 %34, i32* %36, align 8
  %37 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 14
  store i64 0, i64* %38, align 8
  %39 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %40 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 13
  store i64 0, i64* %40, align 8
  %41 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %42 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %41, i32 0, i32 12
  store i64 0, i64* %42, align 8
  %43 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %44 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %43, i32 0, i32 11
  store i64 0, i64* %44, align 8
  %45 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %46 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %45, i32 0, i32 10
  store i64 0, i64* %46, align 8
  %47 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %48 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %50 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %52 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %51, i32 0, i32 9
  store i64 0, i64* %52, align 8
  %53 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %54 = load i32, i32* @decarm, align 4
  %55 = call i32 @set_kbd(%struct.vc_data* %53, i32 %54)
  %56 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %57 = load i32, i32* @decckm, align 4
  %58 = call i32 @clr_kbd(%struct.vc_data* %56, i32 %57)
  %59 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %60 = load i32, i32* @kbdapplic, align 4
  %61 = call i32 @clr_kbd(%struct.vc_data* %59, i32 %60)
  %62 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %63 = load i32, i32* @lnm, align 4
  %64 = call i32 @clr_kbd(%struct.vc_data* %62, i32 %63)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kbd_table, align 8
  %66 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %67 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kbd_table, align 8
  %72 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %73 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* @LED_SHOW_FLAGS, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kbd_table, align 8
  %79 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %80 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  store i32 %77, i32* %83, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kbd_table, align 8
  %85 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %86 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kbd_table, align 8
  %92 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %93 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 %90, i32* %96, align 4
  %97 = load i32, i32* @CUR_DEFAULT, align 4
  %98 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %99 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %98, i32 0, i32 8
  store i32 %97, i32* %99, align 8
  %100 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %101 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %104 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 4
  %105 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %106 = call i32 @default_attr(%struct.vc_data* %105)
  %107 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %108 = call i32 @update_attr(%struct.vc_data* %107)
  %109 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %110 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 16843008, i32* %112, align 4
  %113 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %114 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 7
  store i32 16843009, i32* %116, align 4
  %117 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %118 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 6
  store i32 16843009, i32* %120, align 4
  %121 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %122 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 5
  store i32 16843009, i32* %124, align 4
  %125 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %126 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  store i32 16843009, i32* %128, align 4
  %129 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %130 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  store i32 16843009, i32* %132, align 4
  %133 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %134 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  store i32 16843009, i32* %136, align 4
  %137 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %138 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32 16843009, i32* %140, align 4
  %141 = load i32, i32* @DEFAULT_BELL_PITCH, align 4
  %142 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %143 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @DEFAULT_BELL_DURATION, align 4
  %145 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %146 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  %147 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %148 = call i32 @gotoxy(%struct.vc_data* %147, i32 0, i32 0)
  %149 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %150 = call i32 @save_cur(%struct.vc_data* %149)
  %151 = load i32, i32* %4, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %2
  %154 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %155 = call i32 @csi_J(%struct.vc_data* %154, i32 2)
  br label %156

156:                                              ; preds = %153, %2
  ret void
}

declare dso_local i32 @set_translate(i32, %struct.vc_data*) #1

declare dso_local i32 @set_kbd(%struct.vc_data*, i32) #1

declare dso_local i32 @clr_kbd(%struct.vc_data*, i32) #1

declare dso_local i32 @default_attr(%struct.vc_data*) #1

declare dso_local i32 @update_attr(%struct.vc_data*) #1

declare dso_local i32 @gotoxy(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @save_cur(%struct.vc_data*) #1

declare dso_local i32 @csi_J(%struct.vc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
