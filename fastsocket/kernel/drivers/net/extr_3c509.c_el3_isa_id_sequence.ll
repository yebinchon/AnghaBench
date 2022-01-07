; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c509.c_el3_isa_id_sequence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c509.c_el3_isa_id_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@id_port = common dso_local global i32 0, align 4
@current_tag = common dso_local global i32 0, align 4
@EL3_PNP = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@el3_cards = common dso_local global i32 0, align 4
@el3_debug = common dso_local global i32 0, align 4
@el3_devs = common dso_local global %struct.TYPE_3__** null, align 8
@nopnp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @el3_isa_id_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @el3_isa_id_sequence(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i16 255, i16* %4, align 2
  %6 = load i32, i32* @id_port, align 4
  %7 = call i32 @outb(i32 0, i32 %6)
  %8 = load i32, i32* @id_port, align 4
  %9 = call i32 @outb(i32 0, i32 %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %36, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 255
  br i1 %12, label %13, label %39

13:                                               ; preds = %10
  %14 = load i16, i16* %4, align 2
  %15 = sext i16 %14 to i32
  %16 = load i32, i32* @id_port, align 4
  %17 = call i32 @outb(i32 %15, i32 %16)
  %18 = load i16, i16* %4, align 2
  %19 = sext i16 %18 to i32
  %20 = shl i32 %19, 1
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %4, align 2
  %22 = load i16, i16* %4, align 2
  %23 = sext i16 %22 to i32
  %24 = and i32 %23, 256
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %13
  %27 = load i16, i16* %4, align 2
  %28 = sext i16 %27 to i32
  %29 = xor i32 %28, 207
  br label %33

30:                                               ; preds = %13
  %31 = load i16, i16* %4, align 2
  %32 = sext i16 %31 to i32
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i32 [ %29, %26 ], [ %32, %30 ]
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %4, align 2
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %10

39:                                               ; preds = %10
  %40 = load i32, i32* @current_tag, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @id_port, align 4
  %44 = call i32 @outb(i32 208, i32 %43)
  br label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @id_port, align 4
  %47 = call i32 @outb(i32 216, i32 %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = call i32 @id_read_eeprom(i32 7)
  %50 = icmp ne i32 %49, 27984
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 1, i32* %2, align 4
  br label %68

52:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %64, %52
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 3
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @id_read_eeprom(i32 %57)
  %59 = call i32 @htons(i32 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %53

67:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %51
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @id_read_eeprom(i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
